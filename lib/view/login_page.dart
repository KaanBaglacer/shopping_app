import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';
import 'package:shopping_app/util/widgets/text_form_fields/name_pass_text_form_field.dart';
import 'package:shopping_app/view/home_page.dart';
import 'package:shopping_app/view/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  static const ROUTE = "/loginPage";

  final TextEditingController userNameTextEditingController = TextEditingController();
  final TextEditingController passTextEditingController = TextEditingController();

  LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Spacer(flex: 4),
              usernameTextFormField,
              const Spacer(),
              passwordTextFormField,
              const Spacer(flex: 7),
              loginButton(context),
              signUpTextButton(context),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget signUpTextButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("If you don't have user account"),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SignUpPage.ROUTE);
          },
          child: Text("click here"),
        ),
      ],
    );
  }

  Widget loginButton(BuildContext context) {
    return SizedBox(
      width: context.width(0.7),
      height: context.height(0.085),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: const Text(
          'login',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.ROUTE);
        },
      ),
    );
  }

  NamePassTextFormField get passwordTextFormField {
    return NamePassTextFormField(
      textEditingController: passTextEditingController,
      label: 'Password',
      obscureText: true,
    );
  }

  NamePassTextFormField get usernameTextFormField {
    return NamePassTextFormField(
      textEditingController: userNameTextEditingController,
      label: "Phone, email or username",
      obscureText: false,
    );
  }
}
