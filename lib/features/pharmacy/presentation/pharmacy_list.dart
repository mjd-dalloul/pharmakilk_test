import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaklik/core/app/app_bloc/app_bloc.dart';
import 'package:pharmaklik/features/pharmacy/domain/models/pharmacy.dart';
import 'package:pharmaklik/features/pharmacy/presentation/pharmacy_info.dart';

class PharmacyList extends StatelessWidget {
  const PharmacyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                context.read<AppBloc>().add(const AppEvent.logoutRequested());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          RichText(
            text: TextSpan(
              text: 'Best Pharmacies in ',
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: 'Lebanon',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const Expanded(
            child: PharmaciesList(),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}

class PharmaciesList extends StatefulWidget {
  const PharmaciesList({Key? key}) : super(key: key);

  @override
  PharmaciesListState createState() => PharmaciesListState();
}

class PharmaciesListState extends State<PharmaciesList>
    with SingleTickerProviderStateMixin {
  int currIndex = 0;
  int prevIndex = 0;
  final SwiperController swiperController = SwiperController();
  late final AnimationController animationController;

  final List<Pharmacy> data = const [
    Pharmacy(
      name: 'Nair',
      image: 'assets/pharma_image_1.png',
      location: 'Beirut',
      description: 'description',
      lat: 33.75726309859529,
      lng: 35.458148076703694,
    ),
    Pharmacy(
      name: 'Beesline',
      location: 'Tripoli',
      image: 'assets/pharma_image_2.png',
      description: 'description',
      lat: 34.438732497389026,
      lng: 35.835052045789055,
    ),
    Pharmacy(
      name: 'Optimal',
      image: 'assets/pharma_image_3.png',
      location: 'Zahlé',
      description: 'description',
      lat: 33.847396651016815,
      lng: 35.89727973838401,
    ),
  ];

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Swiper(
            itemCount: 3,
            physics: const BouncingScrollPhysics(),
            viewportFraction: .8,
            loop: false,
            controller: swiperController,
            onIndexChanged: (index) => setState(() {
              prevIndex = currIndex;
              currIndex = index;
              animationController.forward();
            }),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => PharmacyInfo(
                              pharmacyIndex: index,
                              data: data[index],
                            ),
                          ),
                        ),
                        child: Hero(
                          tag: data[index].image,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              data[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: List.generate(
            3,
            (index) => AnimatedOpacity(
              opacity: currIndex == index ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: _buildInfo(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfo(int index) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Hero(
            tag: data[index].name,
            child: Material(
              type: MaterialType.transparency,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  data[index].name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
              ),
              Hero(
                  tag: data[index].location,
                  child: Text(data[index].location,)),
            ],
          ),
        ],
      ),
    );
  }
}
