import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // ignore: prefer_const_constructors
      navigationBar: CupertinoNavigationBar(
        // ignore: prefer_const_constructors
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            CupertinoTextField(
              placeholder: 'Логин или почта',
            ),
            // ignore: prefer_const_constructors
            CupertinoTextField(
              placeholder: 'Пароль',
            ),

            const SizedBox(
              height: 32,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF4631D2),
                child: const Text(
                  'Войти',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 19,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF4631D2),
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
