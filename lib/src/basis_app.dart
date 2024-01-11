import 'package:flutter_micro_basis/flutter_micro_basis.dart' show MicroApp, Routing;

abstract class BasisApp extends MicroApp with Routing {
  List<MicroApp> get microApps;

  void registerRouters() {
    if (basisRoutes.isNotEmpty) routes.addAll(basisRoutes);
    if (microApps.isNotEmpty) {
      for (MicroApp microapp in microApps) {
        routes.addAll(microapp.routes);
      }
    }
  }

  void configureListener() {
    if (microApps.isNotEmpty) {
      for (MicroApp m in microApps) m.createListener();
    }
  }
  
  void configureInjection() {
    if (microApps.isNotEmpty) {
      for (MicroApp m in microApps) m.injectionRegister();
    }
  }
}
