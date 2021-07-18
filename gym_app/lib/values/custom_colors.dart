import 'package:flutter/material.dart';

class customColors {
  Color _activePrimaryButton = Color.fromARGB(255, 50, 70, 180);
  Color _activeSecondaryButton = Color.fromARGB(60, 00, 00, 50);
  Color _activePrimaryGradient = Color.fromARGB(255, 00, 75, 200);
  Color _activeSecondaryGradient = Color.fromARGB(255, 75, 175, 255);
  Color getActivePrimaryButtonColor() {
    return _activePrimaryButton;
  }

  Color getActiveSecondaryButtonColor() {
    return _activeSecondaryButton;
  }

  Color getActivePrimaryGradientColor() {
    return _activePrimaryGradient;
  }

  Color getActiveSecondaryGradientColor() {
    return _activeSecondaryGradient;
  }
}
