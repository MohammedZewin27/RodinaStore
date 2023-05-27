import 'package:flutter/material.dart';
import 'package:rodinakids/generated/assets.dart';
import 'package:rodinakids/screens/homeLayoutScreen/homeLayoutScreen.dart';

import '../../componentes/defaultButton.dart';
import '../../componentes/defaultTextForm.dart';
import '../../style/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Form(
          key: formKey,
          child: Stack(
            children: [
              Image.asset(
                'assets/image/back2.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .2),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'RodinaKids',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontFamily: 'rodina',
                                  fontSize:
                                      MediaQuery.of(context).size.width * .05),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .11,
                      ),
                      DefaultTextForm(
                          hintText: 'Username',
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty || value == '') {
                              return "Username";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .10,
                      ),
                      DefaultTextForm(
                          hintText: 'Password',
                          controller: passwordController,
                          isPassword: true,
                          validator: (value) {
                            if (value!.isEmpty || value == '') {
                              return "Password";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                      DefaultElevatedButton(
                          text: 'sign in',
                          onPressed: () async {
                            await goToHomePage();
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToHomePage() {
    if (formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, HomeLayoutScreen.routeName);
    }
  }
}
