import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logsign/pallete.dart';
import 'package:logsign/widgets/PasswordInput.dart';
import 'package:logsign/widgets/RoundedButton.dart';
import 'package:logsign/widgets/TextInputField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              Colors.black,
              Colors.transparent,
            ],
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/login_bg.png',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black54,
                  BlendMode.darken,
                ),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    hint: 'Email',
                    inputAction: TextInputAction.done,
                    inputType: TextInputType.name,
                    icon: FontAwesomeIcons.envelope,
                  ),
                  PasswordInput(
                    hint: 'PassWord',
                    inputAction: TextInputAction.done,
                    inputType: TextInputType.name,
                    icon: FontAwesomeIcons.envelope,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Forgot PassWord?',
                    style: kBodyText,
                  ),
                  RoundedButton(
                    buttonName: 'Login',
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
              Container(
                child: Text(
                  'Create New Account',
                  style: kBodyText,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
