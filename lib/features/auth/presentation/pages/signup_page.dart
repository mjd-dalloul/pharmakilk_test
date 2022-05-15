import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaklik/core/helpers/failrue_resolver.dart';
import 'package:pharmaklik/features/auth/domain/business_rules/auth_business_rules.dart';
import 'package:pharmaklik/features/auth/presentation/pages/widgets.dart';
import 'package:pharmaklik/features/auth/presentation/register_bloc/register_bloc.dart';
import 'package:pharmaklik/injection.dart';

import '../../../../core/validator/base_validator.dart';

class SignupProvider extends StatelessWidget {
  const SignupProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      lazy: false,
      create: (_) => sl<RegisterBloc>(),
      child: const SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        state.optionOfFailureOrSuccess.fold(
          () {
            //ignore
          },
          (failureOrSuccess) => failureOrSuccess.fold(
              (failure) => FailureResolver.resolveFailure(
                    failure: failure,
                    context: context,
                  ), (_) {
            Navigator.of(context).pop();
            FlushbarHelper.createSuccess(message: 'Signup successfully !!')
                .show(context);
          }),
        );
      },
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
              const SignupForm(),
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
  bool showPassword = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
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
                iconButton: Icons.person_outline_outlined,
                hintText: 'First Name',
                labelText: 'Your First Name',
                onChanged: (value) => context.read<RegisterBloc>().add(
                      RegisterEvent.firstNameChanged(value!),
                    ),
                validator: (_) => Validator.validateRules([
                  RequiredField()
                ], context.read<RegisterBloc>().state.registerModel.firstName)
                    .fold(
                  (failure) => failure.maybeMap(
                    requiredField: (_) => 'Required Field',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InputFiledWithIcon(
                iconButton: Icons.person_outline_outlined,
                hintText: 'Last Name',
                labelText: 'Your Last Name',
                onChanged: (value) => context.read<RegisterBloc>().add(
                      RegisterEvent.lastNameChanged(value!),
                    ),
                validator: (_) => Validator.validateRules([
                  RequiredField()
                ], context.read<RegisterBloc>().state.registerModel.lastName)
                    .fold(
                  (failure) => failure.maybeMap(
                    requiredField: (_) => 'Required Field',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InputFiledWithIcon(
                iconButton: Icons.email_outlined,
                hintText: 'Email Name',
                labelText: 'Your Email Name',
                onChanged: (value) => context.read<RegisterBloc>().add(
                      RegisterEvent.emailChanged(value!),
                    ),
                validator: (_) => Validator.validateRules([StringIsEmail()],
                        context.read<RegisterBloc>().state.registerModel.email)
                    .fold(
                  (failure) => failure.maybeMap(
                    invalidEmail: (_) => 'Enter valid email',
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
                onChanged: (value) => context.read<RegisterBloc>().add(
                      RegisterEvent.passwordChanged(value!),
                    ),
                validator: (_) => Validator.validateRules([
                  PasswordLength()
                ], context.read<RegisterBloc>().state.registerModel.password)
                    .fold(
                  (failure) => failure.maybeMap(
                    shortPassword: (_) =>
                        'password must be greater than 5 characters',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .12,
              ),
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const Center(
                          child: CupertinoActivityIndicator(),
                        )
                      : Hero(
                          tag: 'AuthButton',
                          child: ElevatedButton(
                            onPressed: () => context.read<RegisterBloc>().add(
                              RegisterEvent.registerUserRequested(
                                    formKey.currentState == null
                                        ? false
                                        : formKey.currentState!.validate(),
                                  ),
                                ),
                            child: const Text('Sign up'),
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
