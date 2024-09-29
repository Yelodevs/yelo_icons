### Updated README for **Yelo Icons**:

# Yelo Icons
[![Pub](https://img.shields.io/pub/v/yelo_icons.svg)](https://pub.dartlang.org/packages/yelo_icons)

A Flutter package for easily integrating custom SVG icons into your Flutter applications.

# Support

**YELO ICONS** is a package created for **Flutter/dart**. If you find it useful, please consider supporting it.

<table align="center" width="60%" border="0">
  <tr>
    <td>
      <a title="GitHub Sponsors" href="https://github.com/sponsors/linxford"><img src="https://raw.githubusercontent.com/alefragnani/oss-resources/master/images/button-become-a-sponsor-rounded-small.png"/></a>
    </td>
  </tr>
</table>

## Features

- Simple API for using custom SVG icons
- Customizable icon size and color
- Built on top of the `flutter_svg` package for efficient SVG rendering
- **New in v1.0.3**: Added interaction handlers like `onTap`, `onPress`, `onLongPress` and more.

## Getting started

Add `yelo_icons` to your `pubspec.yaml` file:

```yaml
dependencies:
  yelo_icons: ^1.0.3
```

Run `flutter pub get` to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:yelo_icons/yelo_icons.dart';
```

### Basic Usage:
Use the `Yelo.icon()` method to display an icon:

```dart
Yelo.icon("bold/user", size: 24, color: Colors.blue)
```

### With Interaction:
You can now add interaction events such as `onTap`, `onLongPress`, etc.

```dart
Yelo.icon(
  "bold/user",
  size: 48,
  color: Colors.red,
  onTap: () {
    print("User icon tapped!");
  },
  onLongPress: () {
    print("User icon long-pressed!");
  },
)
```

### Example:

```dart
import 'package:flutter/material.dart';
import 'package:yelo_icons/yelo_icons.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Yelo.icon("bold/user", size: 48, color: Colors.red, onTap: () {
          print('Icon tapped!');
        }),
        Yelo.icon("outline/settings", size: 24, color: Colors.green),
      ],
    );
  }
}
```

## Additional information

For more information on using this package, please refer to the [API documentation](https://github.com/Yelodevs/yelo_icons/blob/main/YELO-API-DOC.md).

To report issues or contribute to the package, visit our [GitHub repository](https://github.com/Yelodevs/yelo_icons).

## Contributing

If you have suggestions or find issues with the package, feel free to open an issue or a pull request on the [GitHub repository](https://github.com/Yelodevs/yelo_icons).

## Credits
- Kudos to all contributors who made this package what it is.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
