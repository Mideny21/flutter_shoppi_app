// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:shoppi/features/cart/presentation/pages/cart_page.dart' as _i2;
import 'package:shoppi/features/homescreen/presentation/pages/home_screen.dart'
    as _i5;
import 'package:shoppi/features/homescreen/presentation/pages/main_screen.dart'
    as _i4;
import 'package:shoppi/features/homescreen/presentation/pages/order_screen.dart'
    as _i7;
import 'package:shoppi/features/homescreen/presentation/pages/profile_screen.dart'
    as _i9;
import 'package:shoppi/features/onboarding/presentation/pages/choose_language.dart'
    as _i3;
import 'package:shoppi/features/onboarding/presentation/pages/onboarding.dart'
    as _i6;
import 'package:shoppi/features/onboarding/presentation/pages/splash_screen.dart'
    as _i11;
import 'package:shoppi/features/products/presentation/pages/product_detail.dart'
    as _i8;
import 'package:shoppi/features/products/presentation/pages/products_by_category.dart'
    as _i1;
import 'package:shoppi/features/products/presentation/pages/search_products.dart'
    as _i10;
import 'package:shoppi/features/products/products.dart' as _i14;

/// generated route for
/// [_i1.AllProductsByCategoryScreen]
class AllProductsByCategoryRoute
    extends _i12.PageRouteInfo<AllProductsByCategoryRouteArgs> {
  AllProductsByCategoryRoute({
    _i13.Key? key,
    required _i14.Categorymodel categorymodel,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         AllProductsByCategoryRoute.name,
         args: AllProductsByCategoryRouteArgs(
           key: key,
           categorymodel: categorymodel,
         ),
         initialChildren: children,
       );

  static const String name = 'AllProductsByCategoryRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllProductsByCategoryRouteArgs>();
      return _i1.AllProductsByCategoryScreen(
        key: args.key,
        categorymodel: args.categorymodel,
      );
    },
  );
}

class AllProductsByCategoryRouteArgs {
  const AllProductsByCategoryRouteArgs({this.key, required this.categorymodel});

  final _i13.Key? key;

  final _i14.Categorymodel categorymodel;

  @override
  String toString() {
    return 'AllProductsByCategoryRouteArgs{key: $key, categorymodel: $categorymodel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AllProductsByCategoryRouteArgs) return false;
    return key == other.key && categorymodel == other.categorymodel;
  }

  @override
  int get hashCode => key.hashCode ^ categorymodel.hashCode;
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute({List<_i12.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartPage();
    },
  );
}

/// generated route for
/// [_i3.ChooseLanguageScreen]
class ChooseLanguageRoute extends _i12.PageRouteInfo<void> {
  const ChooseLanguageRoute({List<_i12.PageRouteInfo>? children})
    : super(ChooseLanguageRoute.name, initialChildren: children);

  static const String name = 'ChooseLanguageRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChooseLanguageScreen();
    },
  );
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardPage();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i12.PageRouteInfo<void> {
  const OnboardingRoute({List<_i12.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i7.OrdersPage]
class OrdersRoute extends _i12.PageRouteInfo<void> {
  const OrdersRoute({List<_i12.PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.OrdersPage();
    },
  );
}

/// generated route for
/// [_i8.ProductDetailPage]
class ProductDetailRoute extends _i12.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i13.Key? key,
    required String id,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         ProductDetailRoute.name,
         args: ProductDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'ProductDetailRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i8.ProductDetailPage(key: args.key, id: args.id);
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.id});

  final _i13.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfilePage();
    },
  );
}

/// generated route for
/// [_i10.SearchProductsScreen]
class SearchProductsRoute extends _i12.PageRouteInfo<void> {
  const SearchProductsRoute({List<_i12.PageRouteInfo>? children})
    : super(SearchProductsRoute.name, initialChildren: children);

  static const String name = 'SearchProductsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.SearchProductsScreen();
    },
  );
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashScreen();
    },
  );
}
