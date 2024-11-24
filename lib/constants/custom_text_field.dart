import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.onChange,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
    required this.validator,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.errorBorder,
    this.focusErrorBorder,
    this.keyboardType,
    this.maxLines = 1,
  });

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 347, // Fixed width
      height: 48, // Fixed height
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          constraints: BoxConstraints(
            maxHeight: height * 0.0625,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xff929BAB),
            fontSize: 14, // Fixed font size
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: enabledBorder ?? borderCustom(),
          focusedBorder: focusedBorder ?? borderCustom(AppColors.primaryColor),
          errorBorder: errorBorder ?? borderCustom(Colors.red),
          focusedErrorBorder: focusErrorBorder ?? borderCustom(Colors.red),
          errorStyle: const TextStyle(fontSize: 0.01),
        ),
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
      ),
    );
  }

  OutlineInputBorder borderCustom([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? AppColors.primaryColor,
        width: 1.5,
      ),
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.onChange,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
    required this.validator,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.errorBorder,
    this.focusErrorBorder,
    this.keyboardType,
    this.maxLines = 1,
  });

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 347, // Fixed width
      height: 190, // Fixed height
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        maxLines: 20,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          constraints: BoxConstraints(
            maxHeight: height * 0.0625,
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xff929BAB),
            fontSize: 14, // Fixed font size
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: enabledBorder ?? borderCustom(),
          focusedBorder: focusedBorder ?? borderCustom(AppColors.primaryColor),
          errorBorder: errorBorder ?? borderCustom(Colors.red),
          focusedErrorBorder: focusErrorBorder ?? borderCustom(Colors.red),
          errorStyle: const TextStyle(fontSize: 0.01),
        ),
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
      ),
    );
  }

  OutlineInputBorder borderCustom([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? AppColors.primaryColor,
        width: 1.5,
      ),
    );
  }
}
