
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/presentation/pages/register_page.dart';
import 'package:sensorwave/features/iot-security/presentation/states/login_state_provider.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';
import 'package:sensorwave/features/shared/presentation/widgets/interaction/clickable_text.dart';
import 'package:sensorwave/features/shared/presentation/widgets/interaction/elevated_button.dart';
import 'package:sensorwave/features/shared/presentation/widgets/input/text_field.dart';

// ignore: must_be_immutable
class LoginPage extends ConsumerWidget {

  final TextEditingController usernameFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  late var state;
  late WidgetRef ref;
  late BuildContext context;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.context = context;
    state = ref.watch(loginStateProvider);
    return Scaffold(
      appBar: const MainAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                const Text(
                  'Have an account?',
                  style: TextStyle(fontSize: 32),  
                ),

                const SizedBox(height: 40),

                MainTextField(controller: usernameFieldController, hintText: 'Username'),

                const SizedBox(height: 20),

                MainTextField(controller: passwordFieldController, hintText: 'Password', icon: Icons.lock_outline_rounded, obscureText: true),

                const SizedBox(height: 30),

                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(loginStateProvider);
                  if (state is DataLoading) {
                    return const CircularProgressIndicator();
                  } else if(state is DataEmpty || state is DataFailed) {
                    return MainElevatedButton(text: "Sign in", onPressed: _onSignInButtonPressed, fontSize: 21,);
                  }
                  return const Text("");
                }),

                const SizedBox(height: 10),

                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(loginStateProvider);
                  if (state is DataEmpty) {
                    return const Text("");
                  } else if (state is DataSuccess) {
                    return const Text('');
                  } else if (state is DataFailed) {
                    return Text('Error: ${state.error!.message}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.redAccent),
                    );
                  } else {
                    return const Text('');
                  }
                }),

                const SizedBox(height: 20),
                
                MainClickableText(text: "Or create an account.", onPressed: _onOpenSignUpButtonPressed),

              ],
            ),
          )
        ),
      ),
    );
  }

  void _onSignInButtonPressed() {
    ref.read(loginStateProvider.notifier).login({"username": usernameFieldController.text, "password": passwordFieldController.text}, context);
  }

  void _onOpenSignUpButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

}