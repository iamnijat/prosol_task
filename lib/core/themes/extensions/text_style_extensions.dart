import 'package:flutter/material.dart';

extension TextFontWeightExtension on TextStyle {
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
}

extension TextFontFamilyExtension on TextStyle {
  TextStyle get inter => copyWith(fontFamily: "Inter");
  TextStyle get nunito => copyWith(fontFamily: "Nunito");
}

extension TextHeightExtension on TextStyle {
  TextStyle fontHeight(double size) => copyWith(height: size);
}

extension TextOverflowExtension on TextStyle {
  TextStyle get ellipsis => copyWith(overflow: TextOverflow.ellipsis);
  TextStyle get clip => copyWith(overflow: TextOverflow.clip);
  TextStyle get fade => copyWith(overflow: TextOverflow.fade);
  TextStyle get visible => copyWith(overflow: TextOverflow.visible);
}

extension TextDecorationExtension on TextStyle {
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get underlineDotted => copyWith(
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.dotted);
  TextStyle get underlineDashed => copyWith(
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.dashed);
}

extension LetterSpacingExtension on TextStyle {
  TextStyle letterSpacing(double spacing) => copyWith(letterSpacing: spacing);
}

extension WordSpacingExtension on TextStyle {
  TextStyle wordSpacing(double spacing) => copyWith(wordSpacing: spacing);
}

extension TextFontSizeExtension on TextStyle {
  TextStyle size(double fontSize) => copyWith(fontSize: fontSize);
}
