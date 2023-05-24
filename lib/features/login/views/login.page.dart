import 'package:desafio_tela_inicial_medium/features/login/views/widgets/primary_button.widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 196,
              child: Image.asset(
                key: const ValueKey('imageMedium'),
                'assets/images/medium.png',
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 60,
                  width: 280,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      key: ValueKey('textTile'),
                      'Join Medium.',
                      style: TextStyle(
                        fontFamily: 'Playfair',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                PrimaryButton(
                  key: const ValueKey('signupGoogle'),
                  label: 'Sign up with Google',
                  iconWidget: Image.asset(
                    'assets/images/google.png',
                  ),
                ),
                const SizedBox(height: 14),
                PrimaryButton(
                  key: const ValueKey('signupEmail'),
                  label: 'Sign up with Email',
                  iconWidget: Image.asset(
                    'assets/images/email.png',
                  ),
                ),
                const SizedBox(height: 28),
                Row(
                  children: const [
                    Flexible(
                      child: Divider(
                        key: ValueKey('dividerLeft'),
                        thickness: 1,
                        color: Colors.black45,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or, sign up with',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Flexible(
                      child: Divider(
                        key: ValueKey('dividerRight'),
                        thickness: 1,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black),
                  ),
                  child: InkWell(
                    key: const ValueKey('buttonFacebook'),
                    borderRadius: BorderRadius.circular(50),
                    onTap: () => print('tapped!'),
                    child: Transform.scale(
                      scale: 0.55,
                      child: Image.asset('assets/images/facebook.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Text.rich(
                  TextSpan(
                    style: const TextStyle(fontWeight: FontWeight.normal),
                    children: [
                      const TextSpan(text: 'Already have an account? '),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () => print('tapped!'),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text.rich(
              TextSpan(
                style: const TextStyle(color: Colors.black45),
                children: [
                  const TextSpan(text: 'By signing up, you agree to our '),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () => print('tapped!'),
                      child: const Text(
                        'Terms of Service',
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ' and acknowledge that our '),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () => print('tapped!'),
                      child: const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ' applies yo tou.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
