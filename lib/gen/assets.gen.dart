/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/archive_icon.svg
  String get archiveIcon => 'assets/icons/archive_icon.svg';

  /// File path: assets/icons/arrow_head_down_icon.svg
  String get arrowHeadDownIcon => 'assets/icons/arrow_head_down_icon.svg';

  /// File path: assets/icons/bell_icon.svg
  String get bellIcon => 'assets/icons/bell_icon.svg';

  /// File path: assets/icons/check_mark.svg
  String get checkMark => 'assets/icons/check_mark.svg';

  /// File path: assets/icons/corner_up_left_icon.svg
  String get cornerUpLeftIcon => 'assets/icons/corner_up_left_icon.svg';

  /// File path: assets/icons/district_icon.svg
  String get districtIcon => 'assets/icons/district_icon.svg';

  /// File path: assets/icons/file_attachment_icon.svg
  String get fileAttachmentIcon => 'assets/icons/file_attachment_icon.svg';

  /// File path: assets/icons/help_icon.svg
  String get helpIcon => 'assets/icons/help_icon.svg';

  /// File path: assets/icons/home_icon.svg
  String get homeIcon => 'assets/icons/home_icon.svg';

  /// File path: assets/icons/info_circle_icon.svg
  String get infoCircleIcon => 'assets/icons/info_circle_icon.svg';

  /// File path: assets/icons/log_out_icon.svg
  String get logOutIcon => 'assets/icons/log_out_icon.svg';

  /// File path: assets/icons/logo.svg
  String get logo => 'assets/icons/logo.svg';

  /// File path: assets/icons/map_icon.svg
  String get mapIcon => 'assets/icons/map_icon.svg';

  /// File path: assets/icons/map_surface.svg
  String get mapSurface => 'assets/icons/map_surface.svg';

  /// File path: assets/icons/menu_icon.svg
  String get menuIcon => 'assets/icons/menu_icon.svg';

  /// File path: assets/icons/message_icon.svg
  String get messageIcon => 'assets/icons/message_icon.svg';

  /// File path: assets/icons/message_question_square_icon.svg
  String get messageQuestionSquareIcon =>
      'assets/icons/message_question_square_icon.svg';

  /// File path: assets/icons/minus_icon.svg
  String get minusIcon => 'assets/icons/minus_icon.svg';

  /// File path: assets/icons/pen_icon.svg
  String get penIcon => 'assets/icons/pen_icon.svg';

  /// File path: assets/icons/ruler_icon.svg
  String get rulerIcon => 'assets/icons/ruler_icon.svg';

  /// File path: assets/icons/settings_icon.svg
  String get settingsIcon => 'assets/icons/settings_icon.svg';

  /// File path: assets/icons/stat_icon.svg
  String get statIcon => 'assets/icons/stat_icon.svg';

  /// File path: assets/icons/task_icon.svg
  String get taskIcon => 'assets/icons/task_icon.svg';

  /// File path: assets/icons/user_icon.svg
  String get userIcon => 'assets/icons/user_icon.svg';

  /// List of all assets
  List<String> get values => [
        archiveIcon,
        arrowHeadDownIcon,
        bellIcon,
        checkMark,
        cornerUpLeftIcon,
        districtIcon,
        fileAttachmentIcon,
        helpIcon,
        homeIcon,
        infoCircleIcon,
        logOutIcon,
        logo,
        mapIcon,
        mapSurface,
        menuIcon,
        messageIcon,
        messageQuestionSquareIcon,
        minusIcon,
        penIcon,
        rulerIcon,
        settingsIcon,
        statIcon,
        taskIcon,
        userIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/land.png
  AssetGenImage get land => const AssetGenImage('assets/images/land.png');

  /// List of all assets
  List<AssetGenImage> get values => [avatar, land];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
