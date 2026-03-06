import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/repositories/counter_models.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _model = CounterModel(0);

  int get counter => _model.value;

  void increment() {
    _model.value++;
    notifyListeners();
  }

  void decrement() {
    _model.value--;
    notifyListeners();
  }
}