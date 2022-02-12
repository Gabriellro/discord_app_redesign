import 'package:flutter/material.dart';

class AddServerButtonModel {
  final String label, iconSvg;
  final VoidCallback? ontap;

  AddServerButtonModel({
    required this.label,
    required this.iconSvg,
    this.ontap,
  });
}
