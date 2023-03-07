import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Регистрация'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            CupertinoTextField(
              placeholder: 'Логин',
            ),
            CupertinoTextField(
              placeholder: 'Телефон',
            ),
            CupertinoTextField(
              placeholder: 'Почта',
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                child: Text(
                  'Создать аккаунт',
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
