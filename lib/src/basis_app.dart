import 'package:flutter_micro_basis/flutter_micro_basis.dart';

abstract class BasisApp with Routing {
  List<MicroApp> get modules;

  void registerListener() {
    if (modules.isNotEmpty) {
      for (MicroApp m in modules) m.createListener();
    }
  }
  
  void injectionRegister() {
    if (modules.isNotEmpty) {
      for (MicroApp m in modules) m.injectionRegister();
    }
  }
}
