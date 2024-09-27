//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <yelo_icons/yelo_icons_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) yelo_icons_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "YeloIconsPlugin");
  yelo_icons_plugin_register_with_registrar(yelo_icons_registrar);
}
