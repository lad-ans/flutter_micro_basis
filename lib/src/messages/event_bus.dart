import 'dart:async';

class EventBus {
  EventBus._internal();
  static final EventBus _instance = EventBus._internal();
  factory EventBus() => _instance;

  // ignore: close_sinks
  final _bus = StreamController.broadcast();
  static emit(payload) => _instance._bus.sink.add(payload);
  static get listen => _instance._bus.stream.listen;
}