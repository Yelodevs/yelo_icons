#ifndef FLUTTER_PLUGIN_YELO_ICONS_PLUGIN_H_
#define FLUTTER_PLUGIN_YELO_ICONS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace yelo_icons {

class YeloIconsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  YeloIconsPlugin();

  virtual ~YeloIconsPlugin();

  // Disallow copy and assign.
  YeloIconsPlugin(const YeloIconsPlugin&) = delete;
  YeloIconsPlugin& operator=(const YeloIconsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace yelo_icons

#endif  // FLUTTER_PLUGIN_YELO_ICONS_PLUGIN_H_
