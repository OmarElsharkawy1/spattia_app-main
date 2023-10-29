import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;
}

extension NavigatorHelper on BuildContext {
  void push(Widget widget) {
    Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }

  void pop() {
    Navigator.of(this).pop();
  }

  void pushReplacement(Widget widget) {
    Navigator.of(this).pushReplacement(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
}

extension PaddingWidget on Widget {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets, child: this,);
  }
}
