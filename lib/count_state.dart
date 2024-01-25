import 'package:flutter/material.dart';

class CountState extends InheritedWidget {
  final int count;
  final Function increment;

  const CountState(
      {super.key,
      required this.count,
      required super.child,
      required this.increment});

  static CountState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CountState>())!;
  }

  @override
  bool updateShouldNotify(CountState oldWidget) {
    //return true;
    return false;
  }
}
