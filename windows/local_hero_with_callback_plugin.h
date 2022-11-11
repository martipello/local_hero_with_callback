#ifndef FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_
#define FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace local_hero_with_callback_with_callback_with_callback {

class LocalHeroWithCallbackPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  LocalHeroWithCallbackPlugin();

  virtual ~LocalHeroWithCallbackPlugin();

  // Disallow copy and assign.
  LocalHeroWithCallbackPlugin(const LocalHeroWithCallbackPlugin&) = delete;
  LocalHeroWithCallbackPlugin& operator=(const LocalHeroWithCallbackPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace local_hero_with_callback_with_callback_with_callback

#endif  // FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_
