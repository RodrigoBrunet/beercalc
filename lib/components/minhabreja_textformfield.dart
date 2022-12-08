import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MinhaBrejaFormField extends StatelessWidget {
  MinhaBrejaFormField({
    super.key,
    this.icon,
    this.text,
    this.color,
    this.textColor,
    this.fontSize,
    this.iconColor,
    this.iconSize,
    this.controller,
    this.cursorColor,
  });

  IconData? icon;
  double? iconSize;
  String? text;
  Color? color;
  Color? textColor;
  Color? iconColor;
  Color? cursorColor;
  double? fontSize;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            color: color ?? Colors.transparent,
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text ?? '...ml',
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'R\$',
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 70,
              child: TextFormField(
                controller: controller,
                cursorColor: cursorColor,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
