import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmaklik/features/auth/presentation/pages/signup_page.dart';
import 'package:pharmaklik/features/auth/presentation/pages/widgets.dart';

class LoginPageProvider extends StatelessWidget {
  const LoginPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const LoginForm(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .15,
            ),
            Hero(
              tag: 'AuthButton',
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign in'),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute(builder: (_) => const SignupPage()),
                  ),
                  child: Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          InputFiledWithIcon(
            iconButton:Icons.email_outlined,
            labelText: 'Email',
            hintText: 'Your Email',
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
