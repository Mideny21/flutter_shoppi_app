// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:shoppi/features/app_entry.dart' as _i2;
import 'package:shoppi/features/homescreen/presentation/pages/home.dart' as _i6;
import 'package:shoppi/features/homescreen/presentation/pages/home_screen.dart'
    as _i5;
import 'package:shoppi/features/homescreen/presentation/pages/main_screen.dart'
    as _i4;
import 'package:shoppi/features/homescreen/presentation/pages/orders.dart'
    as _i7;
import 'package:shoppi/features/homescreen/presentation/pages/user.dart' as _i8;
import 'package:shoppi/features/language/presentation/pages/choose_language.dart'
    as _i3;
import 'package:shoppi/features/products/presentation/pages/product_by_categories.dart'
    as _i1;
import 'package:shoppi/features/products/products.dart' as _i11;

/// generated route for
/// [_i1.AllProductsByCategoryScreen]
class AllProductsByCategoryRoute
    extends _i9.PageRouteInfo<AllProductsByCategoryRouteArgs> {
  AllProductsByCategoryRoute({
    _i10.Key? key,
    required _i11.Categorymodel categoryModel,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         AllProductsByCategoryRoute.name,
         args: AllProductsByCategoryRouteArgs(
           key: key,
           categoryModel: categoryModel,
         ),
         initialChildren: children,
       );

  static const String name = 'AllProductsByCategoryRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllProductsByCategoryRouteArgs>();
      return _i1.AllProductsByCategoryScreen(
        key: args.key,
        categoryModel: args.categoryModel,
      );
    },
  );
}

class AllProductsByCategoryRouteArgs {
  const AllProductsByCategoryRouteArgs({this.key, required this.categoryModel});

  final _i10.Key? key;

  final _i11.Categorymodel categoryModel;

  @override
  String toString() {
    return 'AllProductsByCategoryRouteArgs{key: $key, categoryModel: $categoryModel}';
  }
}

/// generated route for
/// [_i2.AppEntryScreen]
class AppEntryRoute extends _i9.PageRouteInfo<void> {
  const AppEntryRoute({List<_i9.PageRouteInfo>? children})
    : super(AppEntryRoute.name, initialChildren: children);

  static const String name = 'AppEntryRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppEntryScreen();
    },
  );
}

/// generated route for
/// [_i3.ChangeLanguageScreen]
class ChangeLanguageRoute extends _i9.PageRouteInfo<void> {
  const ChangeLanguageRoute({List<_i9.PageRouteInfo>? children})
    : super(ChangeLanguageRoute.name, initialChildren: children);

  static const String name = 'ChangeLanguageRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChangeLanguageScreen();
    },
  );
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardPage();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.MainHomeScreen]
class MainHomeRoute extends _i9.PageRouteInfo<void> {
  const MainHomeRoute({List<_i9.PageRouteInfo>? children})
    : super(MainHomeRoute.name, initialChildren: children);

  static const String name = 'MainHomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainHomeScreen();
    },
  );
}

/// generated route for
/// [_i7.OrdersPage]
class OrdersRoute extends _i9.PageRouteInfo<void> {
  const OrdersRoute({List<_i9.PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.OrdersPage();
    },
  );
}

/// generated route for
/// [_i8.UserPage]
class UserRoute extends _i9.PageRouteInfo<void> {
  const UserRoute({List<_i9.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.UserPage();
    },
  );
}
