import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

extension MoinTextStyle on TextStyle {
  TextStyle get black {
    return copyWith(fontWeight: FontWeight.w900);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle ofColor(Color color) {
    return copyWith(color: color);
  }
}

class AppTypography extends TextStyle {
  const AppTypography.title1({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 24,
          height: 28 / 24,
          letterSpacing: -0.4,
        );

  const AppTypography.title2({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 20,
          height: 24 / 20,
          letterSpacing: -0.4,
        );

  const AppTypography.subtitle1({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 18,
          height: 22 / 18,
          letterSpacing: -0.2,
        );

  const AppTypography.subtitle2({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 16,
          height: 20 / 16,
          letterSpacing: -0.2,
        );

  const AppTypography.body1({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 14,
          height: 18 / 14,
          letterSpacing: -0.1,
        );

  const AppTypography.body2({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 12,
          height: 16 / 12,
          letterSpacing: -0.1,
        );

  const AppTypography.caption1({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 10,
          height: 14 / 10,
          letterSpacing: -0.1,
        );

  const AppTypography.caption2({
    super.fontWeight,
    super.color,
  }) : super(
          fontFamily: 'Pretendard',
          fontSize: 8,
          height: 12 / 8,
          letterSpacing: -0.1,
        );
}
