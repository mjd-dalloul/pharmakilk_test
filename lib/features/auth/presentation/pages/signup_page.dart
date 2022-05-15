import 'package:flutter/material.dart';
import 'package:pharmaklik/features/auth/presentation/pages/widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(
              height: 100,
            ),
            Hero(
                tag: 'pharmaklik', child: Image.asset('assets/pharmaklik.png')),
            const SizedBox(
              height: 35,
            ),
            const SignupForm(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .12,
            ),
            Hero(
              tag: 'AuthButton',
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign up'),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          InputFiledWithIcon(
            iconButton: Icons.person_outline_outlined,
            hintText: 'First Name',
            labelText: 'Your First Name',
            onChanged: (_) {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          InputFiledWithIcon(
            iconButton: Icons.person_outline_outlined,
            hintText: 'Last Name',
            labelText: 'Your Last Name',
            onChanged: (_) {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          InputFiledWithIcon(
            iconButton: Icons.email_outlined,
            hintText: 'Email Name',
            labelText: 'Your Email Name',
            onChanged: (_) {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          InputFiledWithIcon(
            iconButton:
                showPassword ? Icons.lock_outline : Icons.lock_open_outlined,
            onIconPressed: () => setState(() {
              showPassword = !showPassword;
            }),
            labelText: 'Password',
            hintText: 'Your Password',
            obscureText: true,
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }
}
