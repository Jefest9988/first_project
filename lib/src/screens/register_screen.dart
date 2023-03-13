import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        middle: Text('Регистрация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 32,
                ),
                CupertinoTextField(
                  placeholder: 'Логин',
                  decoration: BoxDecoration(color: CupertinoColors.white),
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 16),
                ),
                Container(
                  height: 1,
                  color: Color(0xFFe0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                  placeholder: 'Телефон',
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 16),
                ),
                Container(
                  height: 1,
                  color: Color(0xFFe0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                  placeholder: 'Почта',
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 16),
                ),
                Container(
                  height: 1,
                  color: Color(0xFFe0E6ED),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                ),
                CupertinoTextField(
                  obscureText: obscureText,
                  placeholder: 'Пароль',
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 16),
                  suffix: CupertinoButton(
                    child: const Icon(
                      CupertinoIcons.eye_slash,
                      color: CupertinoColors.black,
                    ),
                    onPressed: () => setState(() => obscureText = !obscureText),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              child: CupertinoButton(
                color: const Color(0xFF4631D2),
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
