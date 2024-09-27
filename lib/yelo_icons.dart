import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Yelo {
  static const String _basePath = 'assets/icons';

  static Widget icon(String iconName, {double size = 24.0, Color? color}) {
    final String svgPath = '$_basePath/$iconName.svg';
    debugPrint('Attempting to load SVG: $svgPath'); // Debug print

    return SvgPicture.asset(
      svgPath,
      width: size,
      height: size,
      color: color,
      // placeholderBuilder: (BuildContext context) => const Icon(Icons.error),
      package: 'yelo_icons',
    );
  }
}
