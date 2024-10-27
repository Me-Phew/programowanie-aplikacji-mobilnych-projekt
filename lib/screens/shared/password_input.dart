import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_form_field.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    required this.textEditingController,
    required this.validator,
    required this.label,
    required this.icon,
  });

  final TextEditingController textEditingController;
  final FormFieldValidator<String?> validator;
  final Widget label;
  final IconData icon;

  @override
  State<StatefulWidget> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return StyledFormField(
      textEditingController: widget.textEditingController,
      validator: widget.validator,
      label: widget.label,
      icon: widget.icon,
      obscureText: !_isPasswordVisible,
      suffixIcon: Row(
        mainAxisSize:
            MainAxisSize.min, // Use minimal size to avoid unnecessary space
        mainAxisAlignment: MainAxisAlignment.end, // Aligns children to the end
        children: [
          IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: () {
              // Update the state i.e. toggle the state of passwordVisible variable
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
          SizedBox(width: 5), // This creates the space to the left of the icon
        ],
      ),
    );
  }
}
