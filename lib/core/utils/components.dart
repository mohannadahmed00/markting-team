import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  final double? width;
  final double height;
  final Color background;
  final TextStyle textStyle;
  final bool isUpperCase;
  final double radius;
  final Function function;
  final String text;

  const DefaultButton({
    super.key,
    this.width,
    this.height = 40,
    required this.background,
    this.textStyle = const TextStyle(
      color: Colors.white,
    ),
    this.isUpperCase = true,
    this.radius = 32,
    required this.function,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: width ?? constraints.maxWidth,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: background,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: MaterialButton(
            onPressed: function as void Function()?,
            child:
                Text(isUpperCase ? text.toUpperCase() : text, style: textStyle),
          ),
        );
      },
    );
  }
}

class DefaultTextButton extends StatelessWidget {
  final Function function;
  final String text;
  final TextStyle textStyle;

  const DefaultTextButton({
    super.key,
    required this.function,
    this.textStyle = const TextStyle(
      color: Colors.white,
    ),
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function as void Function()?,
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final void Function(String)? onSubmit;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final bool isPassword;
  final String? Function(String?)? validate;
  final String label;
  final IconData? suffix;
  final void Function()? suffixPressed;
  final bool isClickable;
  final Color? fillColor;

  const DefaultFormField({
    super.key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.isPassword = false,
    required this.validate,
    required this.label,
    this.suffix,
    this.suffixPressed,
    this.isClickable = true,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      textInputAction: TextInputAction.next,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(24),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,

                ),
              )
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        fillColor: fillColor,
        filled: fillColor != null,
      ),
    );
  }
}
