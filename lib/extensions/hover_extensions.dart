import 'package:flutter/material.dart';
import 'package:my_website/widgets/translate_on_hover.dart';

extension HoverExtensions on Widget {
  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
