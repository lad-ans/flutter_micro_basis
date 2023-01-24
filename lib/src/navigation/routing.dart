import 'package:flutter/material.dart';
import 'package:flutter_micro_basis/src/navigation/transition.dart';

import '../../flutter_micro_basis.dart';

abstract class Routing {
  /// Initial route
  String get initialRoute => '/';

  /// Registered Modules
  List<Module> get modules;

  /// Base Routes
  Map<String, BasisRoute> get basisRoutes;

  /// Routes
  final _routes = <String, BasisRoute>{};

  /// Routes subscriber
  void registerRoutes() {
    if (basisRoutes.isNotEmpty) _routes.addAll(basisRoutes);
    if (modules.isNotEmpty) {
      for (Module m in modules) _routes.addAll(m.routes);
    }
  }

  /// Transition builder
  Widget _transitionBuilder(
    BuildContext context,
    Animation<double> anim,
    Animation<double> secondAnim,
    child, {
    TransitionType? transitionType,
  }) {
    if (transitionType == TransitionType.upToDown) {
      return upToDown(anim, child);
    } else if (transitionType == TransitionType.downToUp) {
      return downToUp(anim, child);
    } else if (transitionType == TransitionType.leftToRight) {
      return leftToRight(anim, child);
    } else if (transitionType == TransitionType.rightToLeft) {
      return rightToLeft(anim, child);
    } else if (transitionType == TransitionType.leftToRightFaded) {
      return leftToRightFaded(anim, child);
    } else if (transitionType == TransitionType.rightToLeftFaded) {
      return rightToLeftFaded(anim, child);
    } else if (transitionType == TransitionType.rotate) {
      return rotate(anim, child);
    } else if (transitionType == TransitionType.scale) {
      return scale(anim, child);
    } else if (transitionType == TransitionType.scaleElasticIn) {
      return scaleElasticIn(anim, child);
    } else if (transitionType == TransitionType.scaleElasticInOut) {
      return scaleElasticInOut(anim, child);
    } else if (transitionType == TransitionType.size) {
      return size(anim, child);
    } else if (transitionType == TransitionType.fadeIn) {
      return fadeIn(anim, child);
    } else if (transitionType == TransitionType.noTransition) {
      return child;
    } else {
      return rightToLeft(anim, child);
    }
  }

  /// Function to generate route for the app form flutter framework
  Route? onGenerateRoute(RouteSettings routerSettings) {
    var routerName = routerSettings.name;
    var routerArgs = routerSettings.arguments;

    var navigateTo = _routes[routerName]?.widgetBuilderArgs;

    var transitionType = _routes[routerName]?.transitionType;
    var transitionDuration = _routes[routerName]?.transitionDuration;
    var reverseTransitionDuration = _routes[routerName]?.reverseTransitionDuration;

    if (navigateTo == null) return null;

    return PageRouteBuilder(
      pageBuilder: (context, anim, secondAnim) => navigateTo(context, routerArgs),
      transitionDuration: transitionDuration ??= const Duration(milliseconds: 300),
      reverseTransitionDuration: reverseTransitionDuration ??= const Duration(milliseconds: 300),
      transitionsBuilder: (context, anim, secondAnim, child) {
        return _transitionBuilder(
          context,
          anim,
          secondAnim,
          child,
          transitionType: transitionType ?? TransitionType.rightToLeft,
        );
      },
    );
  }
}
