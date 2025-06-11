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
  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    final pages = [
      OnboardingPage(
        title: 'Welcome',
        description: 'This is the first onboarding screen.',
        color: Colors.blueAccent,
        controller: controller,
      ),
      OnboardingPage(
        title: 'Discover',
        description: 'This is the second onboarding screen.',
        color: Colors.greenAccent,
        controller: controller,
      ),
      OnboardingPage(
        title: 'Let\'s Start',
        description: 'This is the last onboarding screen.',
        color: Colors.deepPurpleAccent,
        controller: controller,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: BlocListener<OnboardingCubit, int>(
          listener: (context, state) {
            controller.jumpToPage(state);
          },
          child: PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: pages,
          ),
        ),
      ),
    );
  }
}
