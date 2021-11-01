import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';
import 'package:shopping_app/util/widgets/text_form_fields/name_pass_text_form_field.dart';

class LoginPage extends StatelessWidget {
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
              NamePassTextFormField(
                textEditingController: userNameTextEditingController,
                label: "Phone, email or username",
                obscureText: false,
              ),
              const Spacer(),
              NamePassTextFormField(
                textEditingController: passTextEditingController,
                label: 'Password',
                obscureText: true,
              ),
              const Spacer(
                flex: 7,
              ),
              SizedBox(
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
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
