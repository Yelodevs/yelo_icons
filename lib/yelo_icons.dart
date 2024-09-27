import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Yelo {
  static const String _basePath = 'assets/icons';

  static Widget icon(
    String iconName, {
    double size = 20.0,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
    BoxFit fit = BoxFit.contain, // New prop
    Alignment alignment = Alignment.center, // New prop
    bool matchTextDirection = false, // New prop
    WidgetBuilder? placeholderBuilder, // New prop
  }) {
    final String svgPath = '$_basePath/$iconName.svg';

    return SvgPicture.asset(
      svgPath,
      width: size,
      height: size,
      color: color,
      fit: fit, // Using the new prop
      alignment: alignment, // Using the new prop
      matchTextDirection: matchTextDirection, // Using the new prop
      placeholderBuilder: placeholderBuilder ??
          (BuildContext context) =>
              const Icon(Icons.error), // Using the new prop
      package: 'yelo_icons',
    );
  }
}
