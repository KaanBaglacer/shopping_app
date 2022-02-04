import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';
import 'package:shopping_app/util/widgets/text_form_fields/name_pass_text_form_field.dart';
import 'package:shopping_app/view/sign_up_page.dart';

class HomePage extends StatelessWidget {
  static const ROUTE = "/homePage";

  final TextEditingController userNameTextEditingController = TextEditingController();
  final TextEditingController passTextEditingController = TextEditingController();

  HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Home Page")),
    );
  }
}
