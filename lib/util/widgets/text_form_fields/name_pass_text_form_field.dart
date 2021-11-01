import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/util/extensions/context_extensions.dart';

class NamePassTextFormField extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextEditingController textEditingController;

  bool obscureStatus = true;

  NamePassTextFormField({
    required this.label,
    required this.obscureText,
    required this.textEditingController,
  }) {
    obscureStatus = obscureText;
  }

  @override
  State<NamePassTextFormField> createState() => _NamePassTextFormFieldState();
}

class _NamePassTextFormFieldState extends State<NamePassTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(0.7),
      child: TextFormField(
        controller: widget.textEditingController,
        obscureText: widget.obscureStatus,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          labelText: widget.label,
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      widget.obscureStatus = !widget.obscureStatus;
                    });
                  },
                )
              : null,
        ),
        onSaved: (String? value) {},
      ),
    );
  }
}
