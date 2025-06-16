// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:shoppi/features/authentication/presentation/pages/login_view.dart'
    as _i8;
import 'package:shoppi/features/authentication/presentation/pages/signup_view.dart'
    as _i15;
import 'package:shoppi/features/cart/presentation/pages/cart_page.dart' as _i4;
import 'package:shoppi/features/homescreen/presentation/pages/home.dart' as _i9;
import 'package:shoppi/features/homescreen/presentation/pages/home_screen.dart'
    as _i7;
import 'package:shoppi/features/homescreen/presentation/pages/main_screen.dart'
    as _i6;
import 'package:shoppi/features/homescreen/presentation/pages/user.dart'
    as _i16;
import 'package:shoppi/features/onbaording/presentation/pages/app_entry.dart'
    as _i3;
import 'package:shoppi/features/onbaording/presentation/pages/choose_language.dart'
    as _i5;
import 'package:shoppi/features/onbaording/presentation/pages/onboarding_screen.dart'
    as _i10;
import 'package:shoppi/features/orders/presentation/pages/add_shipping_address.dart'
    as _i1;
import 'package:shoppi/features/orders/presentation/pages/orders_page.dart'
    as _i11;
import 'package:shoppi/features/orders/presentation/pages/shipping_address.dart'
    as _i14;
import 'package:shoppi/features/products/presentation/pages/product_by_categories.dart'
    as _i2;
import 'package:shoppi/features/products/presentation/pages/product_detail.dart'
    as _i12;
import 'package:shoppi/features/products/products.dart' as _i19;
import 'package:shoppi/features/profile/presentation/pages/profile_screen.dart'
    as _i13;

/// generated route for
/// [_i1.AddShippingAddressScreen]
class AddShippingAddressRoute extends _i17.PageRouteInfo<void> {
  const AddShippingAddressRoute({List<_i17.PageRouteInfo>? children})
    : super(AddShippingAddressRoute.name, initialChildren: children);

  static const String name = 'AddShippingAddressRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddShippingAddressScreen();
    },
  );
}

/// generated route for
/// [_i2.AllProductsByCategoryScreen]
class AllProductsByCategoryRoute
    extends _i17.PageRouteInfo<AllProductsByCategoryRouteArgs> {
  AllProductsByCategoryRoute({
    _i18.Key? key,
    required _i19.Categorymodel categoryModel,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         AllProductsByCategoryRoute.name,
         args: AllProductsByCategoryRouteArgs(
           key: key,
           categoryModel: categoryModel,
         ),
         initialChildren: children,
       );

  static const String name = 'AllProductsByCategoryRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllProductsByCategoryRouteArgs>();
      return _i2.AllProductsByCategoryScreen(
        key: args.key,
        categoryModel: args.categoryModel,
      );
    },
  );
}

class AllProductsByCategoryRouteArgs {
  const AllProductsByCategoryRouteArgs({this.key, required this.categoryModel});

  final _i18.Key? key;

  final _i19.Categorymodel categoryModel;

  @override
  String toString() {
    return 'AllProductsByCategoryRouteArgs{key: $key, categoryModel: $categoryModel}';
  }
}

/// generated route for
/// [_i3.AppEntryScreen]
class AppEntryRoute extends _i17.PageRouteInfo<void> {
  const AppEntryRoute({List<_i17.PageRouteInfo>? children})
    : super(AppEntryRoute.name, initialChildren: children);

  static const String name = 'AppEntryRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppEntryScreen();
    },
  );
}

/// generated route for
/// [_i4.CartPage]
class CartRoute extends _i17.PageRouteInfo<void> {
  const CartRoute({List<_i17.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i4.CartPage();
    },
  );
}

/// generated route for
/// [_i5.ChangeLanguageScreen]
class ChangeLanguageRoute extends _i17.PageRouteInfo<void> {
  const ChangeLanguageRoute({List<_i17.PageRouteInfo>? children})
    : super(ChangeLanguageRoute.name, initialChildren: children);

  static const String name = 'ChangeLanguageRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChangeLanguageScreen();
    },
  );
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i17.PageRouteInfo<void> {
  const DashboardRoute({List<_i17.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i6.DashboardPage();
    },
  );
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i17.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i18.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onResult: onResult),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i8.LoginPage(key: args.key, onResult: args.onResult);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onResult});

  final _i18.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i9.MainHomeScreen]
class MainHomeRoute extends _i17.PageRouteInfo<void> {
  const MainHomeRoute({List<_i17.PageRouteInfo>? children})
    : super(MainHomeRoute.name, initialChildren: children);

  static const String name = 'MainHomeRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i9.MainHomeScreen();
    },
  );
}

/// generated route for
/// [_i10.OnboardingScreen]
class OnboardingRoute extends _i17.PageRouteInfo<void> {
  const OnboardingRoute({List<_i17.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i11.OrdersPage]
class OrdersRoute extends _i17.PageRouteInfo<void> {
  const OrdersRoute({List<_i17.PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i11.OrdersPage();
    },
  );
}

/// generated route for
/// [_i12.ProductDetailPage]
class ProductDetailRoute extends _i17.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i18.Key? key,
    required String id,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         ProductDetailRoute.name,
         args: ProductDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'ProductDetailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i12.ProductDetailPage(key: args.key, id: args.id);
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.id});

  final _i18.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i13.ProfileScreen]
class ProfileRoute extends _i17.PageRouteInfo<void> {
  const ProfileRoute({List<_i17.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i13.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i14.ShippingAddressScreen]
class ShippingAddressRoute extends _i17.PageRouteInfo<void> {
  const ShippingAddressRoute({List<_i17.PageRouteInfo>? children})
    : super(ShippingAddressRoute.name, initialChildren: children);

  static const String name = 'ShippingAddressRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i14.ShippingAddressScreen();
    },
  );
}

/// generated route for
/// [_i15.SignUpPage]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute({List<_i17.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i15.SignUpPage();
    },
  );
}

/// generated route for
/// [_i16.UserPage]
class UserRoute extends _i17.PageRouteInfo<void> {
  const UserRoute({List<_i17.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i16.UserPage();
    },
  );
}
