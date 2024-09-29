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
    VoidCallback? onTap, // New interaction prop
    VoidCallback? onPress, // New interaction prop
    VoidCallback? onLongPress, // New interaction prop
    BorderRadius? borderRadius, // For ripple effect
    bool enableFeedback = true, // Enable feedback sound/vibration
  }) {
    final String svgPath = '$_basePath/$iconName.svg';

    final iconWidget = SvgPicture.asset(
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

    if (onTap != null || onPress != null || onLongPress != null) {
      return InkWell(
        borderRadius: borderRadius ?? BorderRadius.circular(4), // Optional ripple effect
        onTap: onTap ?? onPress, // Trigger onTap or onPress
        onLongPress: onLongPress, // Trigger long press
        enableFeedback: enableFeedback, // Enable feedback sound/vibration
        child: iconWidget,
      );
    }

    // Return the icon without gestures if no interaction is required
    return iconWidget;
  }
}
