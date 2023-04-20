import 'package:flutter/material.dart';

class TypeWriter extends ChangeNotifier {
  String text = 'Flutter Developer';
  void changeText(String text) async {
    while (this.text.isNotEmpty) {
      await Future.delayed(const Duration(milliseconds: 30));
      this.text = this.text.substring(0, this.text.length - 1);
      notifyListeners();
    }
    while (this.text != text) {
      await Future.delayed(const Duration(milliseconds: 50));
      this.text = text.substring(0, this.text.length + 1);
      notifyListeners();
    }
  }
}
