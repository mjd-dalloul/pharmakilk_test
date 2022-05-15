import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pharmaklik/features/pharmacy/domain/models/pharmacy.dart';

class PharmacyInfo extends StatelessWidget {
  final int pharmacyIndex;
  final Pharmacy data;

  const PharmacyInfo({
    Key? key,
    required this.pharmacyIndex,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Stack(
              children: [
                Hero(
                  tag: data.image,
                  child: Image.asset(
                    data.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: data.name,
                        child: Text(
                          data.name,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                          ),
                          Text(data.location),
                        ],
                      ),
                      const SizedBox(height: 64,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: FlutterMap(
              options: MapOptions(
                allowPanningOnScrollingParent: false,
                allowPanning: false,
                enableScrollWheel: false,
                enableMultiFingerGestureRace: false,
                center: LatLng(
                  data.lat,
                  data.lng,
                ),
                zoom: 15.0,
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']),
                MarkerLayerOptions(markers: [
                  Marker(
                      point: LatLng(
                        data.lat,
                        data.lng,
                      ),
                      builder: (_) => const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ))
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
