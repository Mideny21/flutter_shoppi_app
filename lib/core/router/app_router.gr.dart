// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:shoppi/features/app_entry.dart' as _i1;
import 'package:shoppi/features/language/presentation/pages/choose_language.dart'
    as _i2;
import 'package:shoppi/features/products/presentation/pages/homeview.dart'
    as _i3;

/// generated route for
/// [_i1.AppEntryScreen]
class AppEntryRoute extends _i4.PageRouteInfo<void> {
  const AppEntryRoute({List<_i4.PageRouteInfo>? children})
    : super(AppEntryRoute.name, initialChildren: children);

  static const String name = 'AppEntryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppEntryScreen();
    },
  );
}

/// generated route for
/// [_i2.ChangeLanguageScreen]
class ChangeLanguageRoute extends _i4.PageRouteInfo<void> {
  const ChangeLanguageRoute({List<_i4.PageRouteInfo>? children})
    : super(ChangeLanguageRoute.name, initialChildren: children);

  static const String name = 'ChangeLanguageRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChangeLanguageScreen();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}
