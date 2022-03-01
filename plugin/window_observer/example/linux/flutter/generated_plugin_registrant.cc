//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <window_observer/window_observer_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) window_observer_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WindowObserverPlugin");
  window_observer_plugin_register_with_registrar(window_observer_registrar);
}
