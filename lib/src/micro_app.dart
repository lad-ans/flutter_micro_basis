import '../flutter_micro_basis.dart';

abstract class MicroApp {
  String get name;
  Map<String, BasisRoute> get routes;
  void Function() get injectionRegister;
  void Function() get createListener;
}