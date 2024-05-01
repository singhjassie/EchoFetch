import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  const InputBox({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.isPassword,
  });
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextFormField(
      obscureText: !_isPasswordVisible && widget.isPassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          label: Text(widget.hintText),
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.prefixIcon,
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          hintStyle: TextStyle(
            color: colorScheme.onSecondaryContainer.withOpacity(.7),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
          )),
    );
  }
}
