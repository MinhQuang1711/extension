import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text changeTextColor(Color? color) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: color ?? style?.color,
        fontWeight: style?.fontWeight,
        fontSize: style?.fontSize,
      ),
    );
  }
}
