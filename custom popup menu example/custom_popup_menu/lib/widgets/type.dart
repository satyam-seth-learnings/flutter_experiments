import 'package:flutter/material.dart';

/// type for option data
class OptionData {
  final IconData enabledIcon;
  final IconData disabledIcon;
  final String enabledText;
  final String disabledText;

  OptionData({
    required this.enabledIcon,
    required this.disabledIcon,
    required this.enabledText,
    required this.disabledText,
  });
}
