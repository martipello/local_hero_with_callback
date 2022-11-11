import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:local_hero_with_callback/src/rendering/controller.dart';
import 'package:local_hero_with_callback/src/widgets/local_hero_with_callback_layer.dart';
import 'package:local_hero_with_callback/src/widgets/local_hero_with_callback_scope.dart';

/// A function that lets [LocalHeroWithCallback]es self supply a [Widget] that is shown
/// during the local hero's flight from one position to another instead of
/// default (which is to show the child instance of the [LocalHeroWithCallback]).
typedef LocalHeroFlightShuttleBuilder = Widget Function(
  BuildContext context,
  Animation<double> animation,
  Widget child,
);

/// Mark its child as a candidate for local hero animation.
///
/// When the position of this widget (from the perspective of Flutter) changes,
/// an animation is started from the previous position to the new one.
///
/// You'll have to use a [Key] in the top most parent in your container in order
/// to explicitly tell the framework to preserve the state of your children.
class LocalHeroWithCallback extends StatefulWidget {
  /// Creates a [LocalHeroWithCallback].
  ///
  /// If between two frames, the position of a [LocalHeroWithCallback] with the same tag
  /// changes, a local hero animation will be triggered.
  const LocalHeroWithCallback({
    Key? key,
    required this.tag,
    this.flightShuttleBuilder,
    this.enabled = true,
    required this.child,
    this.onAnimationEnd,
  }) : super(key: key);

  /// The identifier for this particular local hero. This tag must be unique
  /// under the same [LocalHeroWithCallbackScope].
  /// If between two frames, the position of a [LocalHeroWithCallback] with the same tag
  /// changes, a local hero animation will be triggered.
  final Object tag;

  /// Optional override to supply a widget that's shown during the local hero's
  /// flight.
  ///
  /// If none is provided, the child is shown in-flight by default.
  final LocalHeroFlightShuttleBuilder? flightShuttleBuilder;

  /// Whether the hero animation should be enabled.
  final bool enabled;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  final VoidCallback? onAnimationEnd;

  @override
  _LocalHeroWithCallbackState createState() => _LocalHeroWithCallbackState();
}

class _LocalHeroWithCallbackState extends State<LocalHeroWithCallback> with SingleTickerProviderStateMixin<LocalHeroWithCallback> {
  late LocalHeroController controller;
  late LocalHeroWithCallbackScopeState scopeState;

  @override
  void initState() {
    super.initState();
    scopeState = context.getLocalHeroScopeState();
    controller = scopeState.track(context, widget);
    controller.addListener(() {
      if(controller.tag == widget.tag && controller.isAnimating == false){
        widget.onAnimationEnd?.call();
      }
    });
  }

  @override
  void dispose() {
    scopeState.untrack(widget);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.enabled
        ? LocalHeroLeader(
            controller: controller,
            child: widget.child,
          )
        : widget.child;
  }
}
