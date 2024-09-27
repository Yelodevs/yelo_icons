#include "include/yelo_icons/yelo_icons_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "yelo_icons_plugin.h"

void YeloIconsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  yelo_icons::YeloIconsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
