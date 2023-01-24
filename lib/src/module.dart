import 'package:flutter_micro_basis/src/navigation/basis_route.dart';
abstract class Module {
  String get moduleName;
  Map<String, BasisRoute> get routes;
  void Function() get injectionRegister;
  void Function() get createListener;
}