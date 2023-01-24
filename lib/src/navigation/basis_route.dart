import 'transition.dart';
import 'widget_args_builder.dart';

class BasisRoute {
  final TransitionType? transitionType;
  final WidgetArgsBuilder widgetBuilderArgs;
  final Duration? transitionDuration;
  final Duration? reverseTransitionDuration;

  const BasisRoute(
    this.widgetBuilderArgs, {
    this.transitionType,
    this.transitionDuration,
    this.reverseTransitionDuration,
  });
}