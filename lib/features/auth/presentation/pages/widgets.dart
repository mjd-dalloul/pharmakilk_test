import 'package:flutter/material.dart';

class InputFiledWithIcon extends StatelessWidget {
  final IconData iconButton;
  final VoidCallback? onIconPressed;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final void Function(String?) onChanged;

  const InputFiledWithIcon({
    Key? key,
    required this.iconButton,
    required this.hintText,
    required this.labelText,
    this.onIconPressed,
    required this.onChanged,
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
            obscureText: obscureText,
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
