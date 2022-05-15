import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaklik/core/app/app_bloc/app_bloc.dart';
import 'package:pharmaklik/core/helpers/failrue_resolver.dart';
import 'package:pharmaklik/core/validator/base_validator.dart';
import 'package:pharmaklik/features/auth/domain/business_rules/auth_business_rules.dart';
import 'package:pharmaklik/features/auth/presentation/login_bloc/login_bloc.dart';
import 'package:pharmaklik/features/auth/presentation/pages/signup_page.dart';
import 'package:pharmaklik/features/auth/presentation/pages/widgets.dart';
import 'package:pharmaklik/injection.dart';

class LoginPageProvider extends StatelessWidget {
  const LoginPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => sl<LoginBloc>(),
      child: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => state.optionOfFailureOrSuccess.fold(() {
        //ignore
      },
          (failureOrSuccess) => failureOrSuccess.fold(
                  (failure) => FailureResolver.resolveFailure(
                      failure: failure, context: context), (_) {
                context
                    .read<AppBloc>()
                    .add(const AppEvent.authenticateCheckRequested());
              })),
      child: Scaffold(
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
                  tag: 'pharmaklik',
                  child: Image.asset('assets/pharmaklik.png')),
              const SizedBox(
                height: 35,
              ),
              const LoginForm(),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const SignupProvider()),
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
  bool showPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: state.showErrorMessage
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              InputFiledWithIcon(
                iconButton: Icons.email_outlined,
                labelText: 'Email',
                hintText: 'Your Email',
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.emailChanged(value!)),
                validator: (_) => Validator.validateRules([StringIsEmail()],
                        context.read<LoginBloc>().state.loginModel.email)
                    .fold(
                  (failure) => failure.maybeMap(
                    invalidEmail: (_) => 'Enter Valid Email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InputFiledWithIcon(
                iconButton: showPassword
                    ? Icons.lock_outline
                    : Icons.lock_open_outlined,
                onIconPressed: () => setState(() {
                  showPassword = !showPassword;
                }),
                labelText: 'Password',
                hintText: 'Your Password',
                obscureText: showPassword,
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.passwordChanged(value!)),
                validator: (_) => Validator.validateRules([PasswordLength()],
                        context.read<LoginBloc>().state.loginModel.password)
                    .fold(
                  (failure) => failure.maybeMap(
                    shortPassword: (_) =>
                        'Password must be greater than 5 characters',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
              ),
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (p, c) => p.isLoading != c.isLoading,
                builder: (context, state) {
                  return state.isLoading
                      ? const Center(
                          child: CupertinoActivityIndicator(),
                        )
                      : Hero(
                          tag: 'AuthButton',
                          child: ElevatedButton(
                            onPressed: () => context.read<LoginBloc>().add(
                                  LoginEvent.loginRequested(
                                    formKey.currentState == null
                                        ? false
                                        : formKey.currentState!.validate(),
                                  ),
                                ),
                            child: const Text('Sign in'),
                          ),
                        );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
