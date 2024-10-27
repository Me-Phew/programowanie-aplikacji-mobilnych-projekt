import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/theme.dart';

class StyledFormField extends StatelessWidget {
  const StyledFormField(
      {super.key,
      required this.textEditingController,
      required this.validator,
      required this.label,
      required this.icon,
      this.obscureText = false,
      this.suffixIcon});

  final TextEditingController textEditingController;
  final FormFieldValidator<String?> validator;
  final Widget label;
  final IconData icon;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      style: GoogleFonts.poppins(
          color: Colors.black, fontSize: 16, letterSpacing: 1),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),

        label: label,
        labelStyle: const TextStyle(color: Colors.black),

        // Bordery inputa
        enabledBorder: CustomInputBorders.enabledBorderW(),
        focusedBorder: CustomInputBorders.focusedBorderW(),
        errorBorder: CustomInputBorders.errorBorder(),
        focusedErrorBorder: CustomInputBorders.errorBorder(),

        filled: false,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
