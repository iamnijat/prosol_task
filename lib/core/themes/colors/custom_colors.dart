import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    this.greyScaleFullWhite,
    this.transparent,
    this.navbar,
    this.textLink,
    this.textDefault,
    this.textSubtle,
    this.iconButtonDefault,
    this.error500,
    this.iconSideBarLeftDefault,
    this.textSideBarDefault,
    this.greyScale900,
    this.greyScale700,
    this.greyScale200,
    this.borderDefault,
    this.backgroundPage,
    this.textInverse,
  });

  final Color? greyScaleFullWhite;
  final Color? transparent;
  final Color? navbar;
  final Color? textLink;
  final Color? textDefault;
  final Color? textSubtle;
  final Color? iconButtonDefault;
  final Color? error500;
  final Color? iconSideBarLeftDefault;
  final Color? textSideBarDefault;
  final Color? greyScale900;
  final Color? greyScale700;
  final Color? greyScale200;
  final Color? borderDefault;
  final Color? backgroundPage;
  final Color? textInverse;

  @override
  CustomColors copyWith({
    Color? greyScaleFullWhite,
    Color? transparent,
    Color? navbar,
    Color? textLink,
    Color? textDefault,
    Color? textSubtle,
    Color? iconButtonDefault,
    Color? error500,
    Color? iconSideBarLeftDefault,
    Color? textSideBarDefault,
    Color? greyScale900,
    Color? greyScale700,
    Color? greyScale200,
    Color? borderDefault,
    Color? backgroundPage,
    Color? textInverse,
  }) {
    return CustomColors(
      greyScaleFullWhite: greyScaleFullWhite ?? this.greyScaleFullWhite,
      transparent: transparent ?? this.transparent,
      navbar: navbar ?? this.navbar,
      textLink: textLink ?? this.textLink,
      textDefault: textDefault ?? this.textDefault,
      textSubtle: textSubtle ?? this.textSubtle,
      iconButtonDefault: iconButtonDefault ?? this.iconButtonDefault,
      error500: error500 ?? this.error500,
      iconSideBarLeftDefault:
          iconSideBarLeftDefault ?? this.iconSideBarLeftDefault,
      textSideBarDefault: textSideBarDefault ?? this.textSideBarDefault,
      greyScale900: greyScale900 ?? this.greyScale900,
      greyScale700: greyScale700 ?? this.greyScale700,
      greyScale200: greyScale200 ?? this.greyScale200,
      borderDefault: borderDefault ?? this.borderDefault,
      backgroundPage: backgroundPage ?? this.backgroundPage,
      textInverse: textInverse ?? this.textInverse,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      greyScaleFullWhite:
          Color.lerp(greyScaleFullWhite, other.greyScaleFullWhite, t),
      transparent: Color.lerp(transparent, other.transparent, t),
      navbar: Color.lerp(navbar, other.navbar, t),
      textLink: Color.lerp(textLink, other.textLink, t),
      textDefault: Color.lerp(textDefault, other.textDefault, t),
      textSubtle: Color.lerp(textSubtle, other.textSubtle, t),
      iconButtonDefault:
          Color.lerp(iconButtonDefault, other.iconButtonDefault, t),
      error500: Color.lerp(error500, other.error500, t),
      iconSideBarLeftDefault:
          Color.lerp(iconSideBarLeftDefault, other.iconSideBarLeftDefault, t),
      textSideBarDefault:
          Color.lerp(textSideBarDefault, other.textSideBarDefault, t),
      greyScale900: Color.lerp(greyScale900, other.greyScale900, t),
      greyScale700: Color.lerp(greyScale700, other.greyScale700, t),
      greyScale200: Color.lerp(greyScale200, other.greyScale200, t),
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t),
      backgroundPage: Color.lerp(backgroundPage, other.backgroundPage, t),
      textInverse: Color.lerp(textInverse, other.textInverse, t),
    );
  }
}
