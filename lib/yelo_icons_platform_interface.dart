import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'yelo_icons_method_channel.dart';

abstract class YeloIconsPlatform extends PlatformInterface {
  /// Constructs a YeloIconsPlatform.
  YeloIconsPlatform() : super(token: _token);

  static final Object _token = Object();

  static YeloIconsPlatform _instance = MethodChannelYeloIcons();

  /// The default instance of [YeloIconsPlatform] to use.
  ///
  /// Defaults to [MethodChannelYeloIcons].
  static YeloIconsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YeloIconsPlatform] when
  /// they register themselves.
  static set instance(YeloIconsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
