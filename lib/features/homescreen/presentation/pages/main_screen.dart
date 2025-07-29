// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/authentication/authentication.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = getIt<AuthService>();
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [HomeRoute(), OrdersRoute(), ProfileRoute()],
      transitionBuilder:
          (context, child, animation) => FadeTransition(
            opacity: animation,
            // the passed child is technically our animated selected-tab page
            child: child,
          ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        Future<void> onTabSelected(int index) async {
          if (index == 1 || index == 2) {
            final isLoggedIn = await authService.isAuthenticated();
            if (!isLoggedIn) {
              final success = await getIt<AuthRedirector>().redirectToLogin();
              if (success == true) {
                tabsRouter.setActiveIndex(index);
                if (index == 1) {
                  if (!context.mounted) return;
                  context.read<OrderBloc>().add(const OrderEvent.fetchOrders());
                }
              }
              return;
            }
          }
          tabsRouter.setActiveIndex(index);
        }

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            backgroundColor: Colors.white,
            elevation: 8,
            onTap: onTabSelected,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_outlined, color: Palette.Primary),
              ),
              BottomNavigationBarItem(
                label: 'Orders',
                icon: Icon(Icons.shopping_bag_outlined, color: Palette.Primary),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings_outlined, color: Palette.Primary),
              ),
            ],
          ),
        );
      },
    );
  }
}
