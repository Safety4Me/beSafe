import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Color textColor;
  final int maxLines;
  final TextInputType keyboarType;
  final bool enabled;
  final bool isLandscape;
  final bool landscapeOrientation;
  final String hintText;
  final bool obscureText;
  final void Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onChanged;
  final String? Function(String)? validator;

  const TextFormFieldWidget({
    Key? key,
    required this.text,
    required this.controller,
    required this.textColor,
    this.maxLines = 1,
    required this.keyboarType,
    this.enabled = true,
    this.hintText = "",
    this.obscureText = false,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.onChanged,
    this.validator, 
    required this.isLandscape, 
    required this.landscapeOrientation,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    var labelTextColor = enabled ? textColor : darkAlabasterColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: TextFormField(
          inputFormatters: inputFormatters,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText,
          maxLines: maxLines,
          controller: controller,
          keyboardType: keyboarType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            labelText: text,
            labelStyle: TextStyle(
              color: labelTextColor,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          textAlign: TextAlign.start,
          style: isLandscape
              ? Theme.of(context).textTheme.bodyText2
              : landscapeOrientation
                  ? Theme.of(context).textTheme.bodySmall
                  : Theme.of(context).textTheme.bodyText2,
          cursorColor: textColor,
          validator: validator as String? Function(String?),
          enabled: enabled,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
