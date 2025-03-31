import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? placeHolder;
  final TextEditingController? textEditingController;
  final double? height;
  final int? maxLine;

  const CustomInputField({
    super.key,
    this.placeHolder,
    this.maxLine,
    this.textEditingController,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: TextField(
        controller: textEditingController,
        maxLines: maxLine,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: placeHolder,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
