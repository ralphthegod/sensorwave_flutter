
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/presentation/states/login_state_provider.dart';
import 'package:sensorwave/features/iot-security/presentation/states/register_state_provider.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';
import 'package:sensorwave/features/shared/presentation/widgets/interaction/clickable_text.dart';
import 'package:sensorwave/features/shared/presentation/widgets/interaction/elevated_button.dart';
import 'package:sensorwave/features/shared/presentation/widgets/input/text_field.dart';

// ignore: must_be_immutable
class RegisterPage extends ConsumerWidget {

  final TextEditingController usernameFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();
  final TextEditingController confirmPasswordFieldController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  late var state;
  late WidgetRef ref;
  late BuildContext context;

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.context = context;
    state = ref.watch(registerStateProvider);
    return Scaffold(
      appBar: const MainAppBar(automaticallyImplyLeading: false,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Register a user',
                  style: TextStyle(fontSize: 32),  
                ),
                const SizedBox(height: 40),
                MainTextField(controller: usernameFieldController, hintText: 'Username'),
                const SizedBox(height: 20),
                MainTextField(controller: passwordFieldController, hintText: 'Password', icon: Icons.lock_outline_rounded, obscureText: true),
                const SizedBox(height: 20),
                MainTextField(controller: confirmPasswordFieldController, hintText: 'Confirm Password', icon: Icons.lock_outline_rounded, obscureText: true),
                const SizedBox(height: 30),

                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(registerStateProvider);
                  if (state is DataLoading) {
                    return const CircularProgressIndicator();
                  } else if(state is DataEmpty || state is DataFailed) {
                    return MainElevatedButton(text: "Sign up", onPressed: _onSignUpButtonPressed, fontSize: 21,);
                  }
                  return const Text("");
                }),

                const SizedBox(height: 10),
                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(registerStateProvider);
                  if (state is DataEmpty) {
                    return const Text("");
                  } else if (state is DataSuccess) {
                    return const Text('');
                  } else if (state is DataFailed) {
                    return Text('Error: ${state.error!.message}');
                  } else {
                    return const Text('');
                  }
                }),

                const SizedBox(height: 20),
                MainClickableText(text: "Already registered? Sign in.", onPressed: _onOpenSignInButtonPressed),

              ],
            ),
          )
        ),
      ),
    );
  }

  void _onOpenSignInButtonPressed() {
    Navigator.pop(context);
  }

  void _onSignUpButtonPressed() {
    ref.read(registerStateProvider.notifier).register({
      "username": usernameFieldController.text, 
      "password": passwordFieldController.text,
      "confirmPassword": confirmPasswordFieldController.text,
      }, context);
  }

}