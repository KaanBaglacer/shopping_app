import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';
import 'package:shopping_app/util/widgets/text_form_fields/name_pass_text_form_field.dart';

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
              const Spacer(),
              Text("If you don't have user account click here"),
              const Spacer(),
            ],
          ),
        ),
      ),
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
        onPressed: () => {},
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
