import 'package:flutter/material.dart';

class EyeToggle with ChangeNotifier {
    bool _isObscure = true;

    bool get isObscure => _isObscure;

    void toggle_eye() {
        _isObscure = !_isObscure;
        notifyListeners();
    }
}