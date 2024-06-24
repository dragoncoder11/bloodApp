import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  bool obscureText;

  CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        cursorColor: kTextGreyColor,
        controller: widget.controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${widget.hint}';
          }
          return null;
        },
        style: Theme.of(context).textTheme.headline4,
        decoration: InputDecoration(
          suffixIcon: (widget.hint.toLowerCase().contains('password'))
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  icon: widget.obscureText
                      ? Icon(
                          Icons.visibility_off,
                          color: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.visibility,
                          color: Theme.of(context).primaryColor,
                        ))
              : null,
          hintText: widget.hint,
          hintStyle: Theme.of(context).textTheme.headline4,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
