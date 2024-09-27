# Yelo Icons API Documentation

## Class: Yelo

The `Yelo` class is the main entry point for using the Yelo Icons package. It provides a static method to create SVG icons.

### Methods

#### icon

```dart
static Widget icon(String iconName, {double size = 24.0, Color? color})
```

Creates and returns a widget displaying the specified SVG icon.

##### Parameters:

- `iconName` (String, required): The name of the icon to display. This should correspond to the SVG file name in the assets folder, without the `.svg` extension. For example, "bold/user" or "outline/settings".

- `size` (double, optional): The size of the icon in logical pixels. Default is 24.0.

- `color` (Color?, optional): The color to apply to the icon. If null, the original colors of the SVG will be used.

##### Returns:

- `Widget`: A widget displaying the requested icon.

##### Exceptions:

- Throws an `Exception` if the specified icon cannot be found or loaded.

##### Example Usage:

```dart
// Basic usage
Yelo.icon("bold/user")

// Custom size and color
Yelo.icon("outline/settings", size: 32, color: Colors.blue)

// With error handling
try {
  Yelo.icon("bulk/user-minus", size: 48, color: Colors.red)
} catch (e) {
  print('Error loading icon: $e');
  // Fallback widget or error handling
}
```

### Internal Properties

#### _basePath

```dart
static const String _basePath = 'packages/yelo_icons/assets/icons'
```

A constant string representing the base path for icon assets. This is used internally by the `icon` method to locate SVG files.

## Best Practices

1. **Error Handling**: Always wrap `Yelo.icon()` calls in try-catch blocks in production code to handle potential errors gracefully.

2. **Performance**: While SVGs are generally performant, be mindful when using many large icons on a single screen, as it may impact performance on lower-end devices.

3. **Color Inheritance**: If you don't specify a color, the icon will use its original colors. This can be useful for multi-colored icons, but may not always integrate well with your app's theme.

4. **Accessibility**: When using icons, especially without accompanying text, consider adding semantic labels for screen readers:

   ```dart
   Semantics(
     label: 'User profile',
     child: Yelo.icon("bold/user")
   )
   ```

5. **Responsiveness**: Consider using the `MediaQuery` to adjust icon sizes based on the device's screen size for a more responsive design.

## Customization

The Yelo Icons package uses the `flutter_svg` package under the hood. If you need more advanced customization options, you can create your own widget using `SvgPicture.asset` directly:

```dart
SvgPicture.asset(
  'packages/yelo_icons/assets/icons/your_icon.svg',
  width: customWidth,
  height: customHeight,
  color: customColor,
  semanticsLabel: 'Description of the icon',
)
```

This allows for more fine-grained control over the SVG rendering if needed.

## Adding Custom Icons

To add your own custom icons to use with Yelo:

1. Place your SVG files in the `assets/icons/` directory of your project.
2. Update your `pubspec.yaml` to include these assets:

   ```yaml
   flutter:
     assets:
       - assets/icons/
   ```

3. Use your custom icons just like the built-in ones:

   ```dart
   Yelo.icon("your_custom_icon", size: 32, color: Colors.purple)
   ```

Remember to name your SVG files clearly and consistently to make them easy to use with the `Yelo.icon()` method.

