import 'package:flutter/material.dart';

extension DivideList on List<Widget> {
  List<Widget> divide(Widget divider) {
    if (this.isEmpty) return this;
    List<Widget> dividedList = [];
    for (int i = 0; i < this.length - 1; i++) {
      dividedList.add(this[i]);
      dividedList.add(divider);
    }
    dividedList.add(this.last);
    return dividedList;
  }
}