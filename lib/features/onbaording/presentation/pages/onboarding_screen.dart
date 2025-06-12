import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/features/onbaording/presentation/cubit/on_boarding_cubit.dart';
import 'package:shoppi/features/onbaording/presentation/pages/onboarding_page.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();

    _controller.addListener(() {
      final currentPage = _controller.page?.round();
      if (currentPage != null) {
        context.read<OnboardingCubit>().updatePage(currentPage);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingPage(
        title: 'Find the Best Deals Daily',
        description:
            'Get exclusive discounts and limited-time offers on your favorite products',
        svg: 'assets/vectors/shopping_bag.svg',
        controller: _controller,
      ),
      OnboardingPage(
        title: 'Shop with Ease and Speed',
        description:
            'Smooth navigation, secure payments, and fast delivery—all in one powerful app designed for you',
        svg: 'assets/vectors/shopping_bag.svg',
        controller: _controller,
      ),
      OnboardingPage(
        title: 'Real-Time Order Tracking',
        description:
            'Know where your order is, every step of the way. From purchase to delivery, we’ve got you covered.',
        svg: 'assets/vectors/shopping_bag.svg',
        controller: _controller,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: BlocListener<OnboardingCubit, int>(
          listener: (context, state) {
            // Only jump if user didn't swipe manually (to avoid loops)
            if (_controller.page?.round() != state) {
              _controller.jumpToPage(state);
            }
          },
          child: PageView(controller: _controller, children: pages),
        ),
      ),
    );
  }
}
