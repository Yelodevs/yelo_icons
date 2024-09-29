### Updated API Documentation for **Yelo Icons**

# Yelo Icons API Documentation

## Class: Yelo

The `Yelo` class is the main entry point for using the Yelo Icons package. It provides a static method to create SVG icons with added flexibility for customization and interaction.

### Methods

#### icon

```dart
static Widget icon(
  String iconName, {
  double size = 24.0,
  Color? color,
  String? semanticLabel,
  TextDirection? textDirection,
  BoxFit fit = BoxFit.contain,
  Alignment alignment = Alignment.center,
  bool matchTextDirection = false,
  WidgetBuilder? placeholderBuilder,
  VoidCallback? onTap, // New prop
  VoidCallback? onLongPress, // New prop
  VoidCallback? onPress, // New prop
})
```

Creates and returns a widget displaying the specified SVG icon with added support for touch interactions like tap, long press, and press.

##### Parameters:

- `iconName` (String, required): The name of the icon to display. This should correspond to the SVG file name in the assets folder, without the `.svg` extension. For example, "bold/user" or "outline/settings".
  
- `size` (double, optional): The size of the icon in logical pixels. Default is 24.0.

- `color` (Color?, optional): The color to apply to the icon. If null, the original colors of the SVG will be used.

- `semanticLabel` (String?, optional): The label for accessibility.

- `textDirection` (TextDirection?, optional): Text direction for icons that need to adjust based on locale.

- `fit` (BoxFit, optional): Defines how the icon should be inscribed into the space. Default is `BoxFit.contain`.

- `alignment` (Alignment, optional): Aligns the icon within its box. Default is `Alignment.center`.

- `matchTextDirection` (bool, optional): If `true`, mirrors the icon in RTL layouts.

- `placeholderBuilder` (WidgetBuilder?, optional): A widget to display while the SVG is loading or in case of an error. Default is an error icon.

- `onTap` (VoidCallback?, optional): A function that gets triggered when the icon is tapped.

- `onPress` (VoidCallback?, optional): A function that gets triggered when the icon is pressed.

- `onLongPress` (VoidCallback?, optional): A function that gets triggered when the icon is long-pressed.

##### Returns:

- `Widget`: A widget displaying the requested icon with optional interaction handlers.

##### Example Usage:

```dart
// Basic usage
Yelo.icon("bold/user")

// Custom size, color, and interaction
Yelo.icon(
  "outline/settings",
  size: 32,
  color: Colors.blue,
  onTap: () {
    print('Icon tapped!');
  },
  onLongPress: () {
    print('Icon long pressed!');
  },
)

// With error handling and a placeholder
Yelo.icon(
  "bulk/user-minus",
  size: 48,
  color: Colors.red,
  placeholderBuilder: (context) => Icon(Icons.error),
)
```

### Internal Properties

#### _basePath

```dart
static const String _basePath = 'packages/yelo_icons/assets/icons'
```

A constant string representing the base path for icon assets. This is used internally by the `icon` method to locate SVG files.

## Interaction Enhancements

- **onTap**: This is a handler for simple taps on the icon, useful for triggering UI changes or navigation.

- **onLongPress**: Use this handler to detect when users long-press the icon, which can trigger additional functionality.

- **onPress**: Similar to `onTap` but can be used for specialized press interactions.

## Best Practices

1. **Error Handling**: Always wrap `Yelo.icon()` calls in try-catch blocks in production code to handle potential errors gracefully.

2. **Performance**: Be mindful of rendering performance when displaying many large icons on a single screen, especially on lower-end devices.

3. **Color Inheritance**: If you don't specify a color, the icon will use its original colors. This can be useful for multi-colored icons, but may not always integrate well with your app's theme.

4. **Accessibility**: When using icons without text, add semantic labels for screen readers:

   ```dart
   Semantics(
     label: 'User profile',
     child: Yelo.icon("bold/user")
   )
   ```

5. **Responsiveness**: Adjust icon sizes dynamically based on device screen sizes for a more responsive design.

## Customization

The Yelo Icons package is built on `flutter_svg`. For advanced use cases, you can directly use `SvgPicture.asset`:

```dart
SvgPicture.asset(
  'packages/yelo_icons/assets/icons/your_icon.svg',
  width: customWidth,
  height: customHeight,
  color: customColor,
  semanticsLabel: 'Icon description',
)
```

## Adding Custom Icons

To add custom icons:

1. Place your SVG files in the `assets/icons/` directory of your project.
2. Update your `pubspec.yaml`:

   ```yaml
   flutter:
     assets:
       - assets/icons/
   ```

3. Use your custom icons as follows:

   ```dart
   Yelo.icon("your_custom_icon", size: 32, color: Colors.purple)
   ```

Make sure your icon file names are clear and follow consistent naming conventions for easier integration.