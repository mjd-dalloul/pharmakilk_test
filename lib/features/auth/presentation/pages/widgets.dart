import 'package:flutter/material.dart';

class InputFiledWithIcon extends StatelessWidget {
  final IconData iconButton;
  final VoidCallback? onIconPressed;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final void Function(String?) onChanged;
  final String? Function(String?) validator;

  const InputFiledWithIcon({
    Key? key,
    required this.iconButton,
    required this.hintText,
    required this.labelText,
    this.onIconPressed,
    required this.onChanged,
    required this.validator,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          visualDensity:
              const VisualDensity(horizontal: VisualDensity.minimumDensity),
          onPressed: onIconPressed,
          icon: Icon(iconButton),
          disabledColor: Colors.black,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: TextFormField(
            validator: validator,
            obscureText: obscureText,
            onChanged: onChanged,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
