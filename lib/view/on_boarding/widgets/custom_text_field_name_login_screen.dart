import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';

class CustomTextFieldNameLoginScreen extends StatelessWidget {
  const CustomTextFieldNameLoginScreen({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: ColorManager.kPrimaryColor,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
