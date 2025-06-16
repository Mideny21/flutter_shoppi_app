// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:shoppi/features/authentication/presentation/pages/login_view.dart'
    as _i8;
import 'package:shoppi/features/authentication/presentation/pages/signup_view.dart'
    as _i16;
import 'package:shoppi/features/cart/presentation/pages/cart_page.dart' as _i4;
import 'package:shoppi/features/homescreen/presentation/pages/home.dart' as _i9;
import 'package:shoppi/features/homescreen/presentation/pages/home_screen.dart'
    as _i7;
import 'package:shoppi/features/homescreen/presentation/pages/main_screen.dart'
    as _i6;
import 'package:shoppi/features/homescreen/presentation/pages/user.dart'
    as _i17;
import 'package:shoppi/features/onbaording/presentation/pages/app_entry.dart'
    as _i3;
import 'package:shoppi/features/onbaording/presentation/pages/choose_language.dart'
    as _i5;
import 'package:shoppi/features/onbaording/presentation/pages/onboarding_screen.dart'
    as _i10;
import 'package:shoppi/features/orders/orders.dart' as _i21;
import 'package:shoppi/features/orders/presentation/pages/add_shipping_address.dart'
    as _i1;
import 'package:shoppi/features/orders/presentation/pages/order_successfully.dart'
    as _i11;
import 'package:shoppi/features/orders/presentation/pages/orders_page.dart'
    as _i12;
import 'package:shoppi/features/orders/presentation/pages/shipping_address.dart'
    as _i15;
import 'package:shoppi/features/products/presentation/pages/product_by_categories.dart'
    as _i2;
import 'package:shoppi/features/products/presentation/pages/product_detail.dart'
    as _i13;
import 'package:shoppi/features/products/products.dart' as _i20;
import 'package:shoppi/features/profile/presentation/pages/profile_screen.dart'
    as _i14;

/// generated route for
/// [_i1.AddShippingAddressScreen]
class AddShippingAddressRoute extends _i18.PageRouteInfo<void> {
  const AddShippingAddressRoute({List<_i18.PageRouteInfo>? children})
    : super(AddShippingAddressRoute.name, initialChildren: children);

  static const String name = 'AddShippingAddressRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddShippingAddressScreen();
    },
  );
}

/// generated route for
/// [_i2.AllProductsByCategoryScreen]
class AllProductsByCategoryRoute
    extends _i18.PageRouteInfo<AllProductsByCategoryRouteArgs> {
  AllProductsByCategoryRoute({
    _i19.Key? key,
    required _i20.Categorymodel categoryModel,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AllProductsByCategoryRoute.name,
         args: AllProductsByCategoryRouteArgs(
           key: key,
           categoryModel: categoryModel,
         ),
         initialChildren: children,
       );

  static const String name = 'AllProductsByCategoryRoute';

  static _i18.PageInfo page = _i18.PageInfo(
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

  final _i19.Key? key;

  final _i20.Categorymodel categoryModel;

  @override
  String toString() {
    return 'AllProductsByCategoryRouteArgs{key: $key, categoryModel: $categoryModel}';
  }
}

/// generated route for
/// [_i3.AppEntryScreen]
class AppEntryRoute extends _i18.PageRouteInfo<void> {
  const AppEntryRoute({List<_i18.PageRouteInfo>? children})
    : super(AppEntryRoute.name, initialChildren: children);

  static const String name = 'AppEntryRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppEntryScreen();
    },
  );
}

/// generated route for
/// [_i4.CartPage]
class CartRoute extends _i18.PageRouteInfo<void> {
  const CartRoute({List<_i18.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i4.CartPage();
    },
  );
}

/// generated route for
/// [_i5.ChangeLanguageScreen]
class ChangeLanguageRoute extends _i18.PageRouteInfo<void> {
  const ChangeLanguageRoute({List<_i18.PageRouteInfo>? children})
    : super(ChangeLanguageRoute.name, initialChildren: children);

  static const String name = 'ChangeLanguageRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChangeLanguageScreen();
    },
  );
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i18.PageRouteInfo<void> {
  const DashboardRoute({List<_i18.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i6.DashboardPage();
    },
  );
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i19.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onResult: onResult),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i8.LoginPage(key: args.key, onResult: args.onResult);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onResult});

  final _i19.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i9.MainHomeScreen]
class MainHomeRoute extends _i18.PageRouteInfo<void> {
  const MainHomeRoute({List<_i18.PageRouteInfo>? children})
    : super(MainHomeRoute.name, initialChildren: children);

  static const String name = 'MainHomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i9.MainHomeScreen();
    },
  );
}

/// generated route for
/// [_i10.OnboardingScreen]
class OnboardingRoute extends _i18.PageRouteInfo<void> {
  const OnboardingRoute({List<_i18.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i11.OrderSuccessfullyScreen]
class OrderSuccessfullyRoute
    extends _i18.PageRouteInfo<OrderSuccessfullyRouteArgs> {
  OrderSuccessfullyRoute({
    _i19.Key? key,
    required _i21.OrderReponse order,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         OrderSuccessfullyRoute.name,
         args: OrderSuccessfullyRouteArgs(key: key, order: order),
         initialChildren: children,
       );

  static const String name = 'OrderSuccessfullyRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderSuccessfullyRouteArgs>();
      return _i11.OrderSuccessfullyScreen(key: args.key, order: args.order);
    },
  );
}

class OrderSuccessfullyRouteArgs {
  const OrderSuccessfullyRouteArgs({this.key, required this.order});

  final _i19.Key? key;

  final _i21.OrderReponse order;

  @override
  String toString() {
    return 'OrderSuccessfullyRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i12.OrdersPage]
class OrdersRoute extends _i18.PageRouteInfo<void> {
  const OrdersRoute({List<_i18.PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i12.OrdersPage();
    },
  );
}

/// generated route for
/// [_i13.ProductDetailPage]
class ProductDetailRoute extends _i18.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i19.Key? key,
    required String id,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         ProductDetailRoute.name,
         args: ProductDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'ProductDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i13.ProductDetailPage(key: args.key, id: args.id);
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.id});

  final _i19.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i14.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i15.ShippingAddressScreen]
class ShippingAddressRoute extends _i18.PageRouteInfo<void> {
  const ShippingAddressRoute({List<_i18.PageRouteInfo>? children})
    : super(ShippingAddressRoute.name, initialChildren: children);

  static const String name = 'ShippingAddressRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i15.ShippingAddressScreen();
    },
  );
}

/// generated route for
/// [_i16.SignUpPage]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute({List<_i18.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.SignUpPage();
    },
  );
}

/// generated route for
/// [_i17.UserPage]
class UserRoute extends _i18.PageRouteInfo<void> {
  const UserRoute({List<_i18.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i17.UserPage();
    },
  );
}
