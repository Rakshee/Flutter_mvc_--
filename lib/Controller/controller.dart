import 'package:mvc_pattern/mvc_pattern.dart';

import '../Models/model.dart';

class Controller extends ControllerMVC{
  factory Controller(){
    if (_this == null) _this = Controller._();
    return _this;

  }
  static Controller _this=Controller._();
  Controller._();

  int get counter=>Model.Counter;
  void increment(){
    Model.increment();
}

void decrement(){
    Model.decrement();
}}