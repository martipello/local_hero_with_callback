#include "include/local_hero_with_callback_with_callback_with_callback/local_hero_with_callback_with_callback_with_callback_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "local_hero_with_callback_with_callback_with_callback_plugin.h"

void LocalHeroWithCallbackPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  local_hero_with_callback_with_callback_with_callback::LocalHeroWithCallbackPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
