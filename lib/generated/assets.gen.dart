/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Poppins-Bold.ttf
  String get poppinsBold => 'assets/fonts/Poppins-Bold.ttf';

  /// File path: assets/fonts/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/fonts/Poppins-Medium.ttf';

  /// File path: assets/fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/Poppins-Regular.ttf';

  /// File path: assets/fonts/Poppins-SemiBold.ttf
  String get poppinsSemiBold => 'assets/fonts/Poppins-SemiBold.ttf';

  /// List of all assets
  List<String> get values =>
      [poppinsBold, poppinsMedium, poppinsRegular, poppinsSemiBold];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow_left.svg');

  /// Directory path: assets/icons/bottom_bar
  $AssetsIconsBottomBarGen get bottomBar => const $AssetsIconsBottomBarGen();

  /// Directory path: assets/icons/home_page
  $AssetsIconsHomePageGen get homePage => const $AssetsIconsHomePageGen();

  /// List of all assets
  List<SvgGenImage> get values => [arrowLeft];
}

class $AssetsIconsBottomBarGen {
  const $AssetsIconsBottomBarGen();

  /// File path: assets/icons/bottom_bar/collection.svg
  SvgGenImage get collection =>
      const SvgGenImage('assets/icons/bottom_bar/collection.svg');

  /// File path: assets/icons/bottom_bar/history.svg
  SvgGenImage get history =>
      const SvgGenImage('assets/icons/bottom_bar/history.svg');

  /// File path: assets/icons/bottom_bar/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/bottom_bar/home.svg');

  /// File path: assets/icons/bottom_bar/identification.svg
  SvgGenImage get identification =>
      const SvgGenImage('assets/icons/bottom_bar/identification.svg');

  /// File path: assets/icons/bottom_bar/search.svg
  SvgGenImage get search =>
      const SvgGenImage('assets/icons/bottom_bar/search.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [collection, history, home, identification, search];
}

class $AssetsIconsHomePageGen {
  const $AssetsIconsHomePageGen();

  /// File path: assets/icons/home_page/settings.svg
  SvgGenImage get settings =>
      const SvgGenImage('assets/icons/home_page/settings.svg');

  /// List of all assets
  List<SvgGenImage> get values => [settings];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
