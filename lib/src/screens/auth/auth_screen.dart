import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // ignore: prefer_const_constructors
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        // ignore: prefer_const_constructors
        backgroundColor: CupertinoColors.white,
        border: const Border(),
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
              decoration: BoxDecoration(color: CupertinoColors.white),
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 19, horizontal: 16),
            ),

            Container(
              height: 1,
              color: Color(0xFFe0E6ED),
              margin: EdgeInsets.symmetric(horizontal: 16),
            )
            // ignore: prefer_const_constructors
            CupertinoTextField(
              placeholder: 'Пароль',
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 19, horizontal: 16),
            ),

            const SizedBox(
              height: 32,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF4631D2),
                child: const Text('Войти',
                    style: TextStyle(fontWeight: FontWeight.bold)),
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
