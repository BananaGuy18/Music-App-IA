import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pep/services/auth.dart';
import 'package:pep/ui/views/authenticate/login.dart';
import 'package:pep/wrapper.dart';
import '../../shared/utils/constants.dart' as constants;

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    final AuthService authService = AuthService();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("pep", style: constants.ThemeText.titleText),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: "username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "password"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: constants.Button.textButton,
                  child: const Text(
                    "sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    await authService.register(_usernameController.text.trim(), _emailController.text.trim(), _passwordController.text.trim());
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Wrapper()), (_) => false );
                  },
                )),
            RichText(
              text: TextSpan(
                style: constants.ThemeText.smallText,
                children: <TextSpan>[
                  const TextSpan(text: "already have an account? "),
                  TextSpan(
                      text: "log in",
                      style: constants.ThemeText.linkText,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                        }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
