import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/MongolFonts.dart';
//import 'package:get/get_state_manager/src/simple/get_state.dart';

class TextStyleController extends GetxController {
  TextStyle _style = TextStyle(
      fontSize: 26,
      color: Colors.black,
      fontFamily: MongolFonts.haratig,
      shadows: [
        Shadow(offset: Offset.zero, color: Colors.transparent, blurRadius: 0)
      ]);

  TextStyle _borderStyle = TextStyle(
      fontSize: 26,
      fontFamily: MongolFonts.haratig,
      shadows: [
        Shadow(offset: Offset.zero, color: Colors.transparent, blurRadius: 0)
      ],
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 8
        ..color = Colors.transparent
  );

  TextStyle get style => _style;
  TextStyle get borderStyle => _borderStyle;

  bool textShadowAble = false;

  setFontSize(double value) {
    _style = _style.copyWith(fontSize: value);
    _borderStyle = _borderStyle.copyWith(fontSize: value);
    print('update fontsize ${style.fontSize}');
    update();
  }

  increaseFontSize() {
    _style = _style.copyWith(fontSize: style.fontSize! + 2);
    _borderStyle = _borderStyle.copyWith(fontSize: style.fontSize! + 2);
    print('update fontsize ${style.fontSize}');
    update();
  }

  decreaseFontSize() {
    _style = _style.copyWith(fontSize: style.fontSize! - 2);
    _borderStyle = _borderStyle.copyWith(fontSize: style.fontSize! - 2);
    print('update fontsize ${style.fontSize}');
    update();
  }

  setColor(Color value) {
    _style = _style.copyWith(color: value);
    update();
  }

  setShadowColor(Color value) {
    var shadow = Shadow(color: value, offset: Offset(2, -2), blurRadius: 3);
    _style = _style.copyWith(shadows: [shadow]);
    _borderStyle = _borderStyle.copyWith(shadows: [shadow]);
    update();
  }

  setBorderColor(Color value) {
   _borderStyle = _borderStyle.copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 8
        ..color = value,
    );
   update();
  }

  setFontFamily(String value) {
    _style = _style.copyWith(fontFamily: value);
    _borderStyle = _borderStyle.copyWith(fontFamily: value);
    update();
  }

  setTextShadow() {
    textShadowAble = !textShadowAble;
    if (textShadowAble) {
      _style = _style.copyWith(shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, -2),
            blurRadius: 2)
      ]);

      _borderStyle = _borderStyle.copyWith(shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, -2),
            blurRadius: 2)
      ]);
    } else {
      _style = _style.copyWith(shadows: [
        Shadow(color: Colors.transparent, offset: Offset.zero, blurRadius: 0)
      ]);
      _borderStyle = _borderStyle.copyWith(shadows: [
        Shadow(color: Colors.transparent, offset: Offset.zero, blurRadius: 0)
      ]);
    }

    update();
  }
}
