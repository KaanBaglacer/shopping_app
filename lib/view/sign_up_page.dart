import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';
import 'package:shopping_app/util/widgets/text_form_fields/name_pass_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  static const ROUTE = "/signUpPage";

  final TextEditingController userNameTextEditingController = TextEditingController();
  final TextEditingController passTextEditingController = TextEditingController();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Spacer(flex: 4),
              userNameTextFormField,
              const Spacer(),
              passwordTextFormField,
              const Spacer(
                flex: 7,
              ),
              signUpButton(context),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox signUpButton(BuildContext context) {
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
          'sign up',
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

  NamePassTextFormField get userNameTextFormField {
    return NamePassTextFormField(
      textEditingController: userNameTextEditingController,
      label: "Phone, email or username",
      obscureText: false,
    );
  }
}
