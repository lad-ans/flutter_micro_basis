import 'package:flutter_micro_basis/flutter_micro_basis.dart';

abstract class BasisApp {
  /// Registered Modules
  List<Module> get modules;

  /// Listeners subscriber
  void registerListener() {
    if (modules.isNotEmpty) {
      for (Module m in modules) m.createListener();
    }
  }
  
  /// Injections subscriber
  void injectionRegister() {
    if (modules.isNotEmpty) {
      for (Module m in modules) m.injectionRegister();
    }
  }
}
