#ifndef FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_
#define FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _LocalHeroWithCallbackPlugin LocalHeroWithCallbackPlugin;
typedef struct {
  GObjectClass parent_class;
} LocalHeroWithCallbackPluginClass;

FLUTTER_PLUGIN_EXPORT GType local_hero_with_callback_with_callback_with_callback_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void local_hero_with_callback_with_callback_with_callback_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_local_hero_with_callback_with_callback_WITH_CALLBACK_PLUGIN_H_
