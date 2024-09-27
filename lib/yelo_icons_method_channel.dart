import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yelo_icons_platform_interface.dart';

/// An implementation of [YeloIconsPlatform] that uses method channels.
class MethodChannelYeloIcons extends YeloIconsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yelo_icons');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
