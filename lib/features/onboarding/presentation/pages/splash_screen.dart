import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/features/onboarding/presentation/cubit/app_settings.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  void _navigateBasedOnSettings(AnimationStatus status) {
    final appSettings = context.read<AppSettingsCubit>().state;

    if (status == AnimationStatus.completed) {
      if (!appSettings.isOpen) {
        context.router.replace(const ChooseLanguageRoute());
      } else {
        context.router.replace(const HomeRoute());
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.addStatusListener(_navigateBasedOnSettings);
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller.removeStatusListener(_navigateBasedOnSettings);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: FadeTransition(
              opacity: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
              ),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.925),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/shoppi.png',
                      width: MediaQuery.sizeOf(context).width / 2,
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
