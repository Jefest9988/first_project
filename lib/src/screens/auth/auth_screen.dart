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
            CupertinoButton.filled(
              child: const Text('Войти'),
              onPressed: () {},
            ),
            CupertinoButton.filled(
              child: const Text('Зарегестрироваться'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
