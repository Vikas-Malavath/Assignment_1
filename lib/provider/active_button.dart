import 'package:flutter/material.dart';

class ActiveButton with ChangeNotifier {
    bool _isButtonActive = false;

    bool get isButtonActive => _isButtonActive;

    void button_activate() {
        _isButtonActive = true;
        notifyListeners();
    }

    void button_deactivate() {
        _isButtonActive = false;
        notifyListeners();
    }
}