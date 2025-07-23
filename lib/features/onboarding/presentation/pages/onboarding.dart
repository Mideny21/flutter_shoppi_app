import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/colors.dart';
import 'package:shoppi/features/onboarding/presentation/cubit/app_settings.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String assetName, [double width = 350]) {
      return SvgPicture.asset(
        'assets/vectors/$assetName',
        width: width,
        semanticsLabel: 'onboarding svg',
      );
    }

    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.black54);
    var pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: Palette.Primary.withValues(alpha: 0.8),
      ),
      bodyTextStyle: bodyStyle,
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    final pages = [
      PageViewModel(
        title: 'Find the Best Deals Daily',
        body:
            'Get exclusive discounts and limited-time offers on your favorite products',
        image: buildImage('shopping_bag.svg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: 'Shop with Ease and Speed',
        body:
            'Smooth navigation, secure payments, and fast delivery—all in one powerful app designed for you',
        image: buildImage('onlinepayments.svg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: 'Real-Time Order Tracking',
        body:
            'Know where your order is, every step of the way. From purchase to delivery, we’ve got you covered.',
        image: buildImage('delivery.svg'),
        decoration: pageDecoration,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: pages,
          showSkipButton: true,
          skip: const Text("Skip"),
          next: const Text("Next"),
          done: const Text(
            "Done",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          onDone: () {
            context.read<AppSettingsCubit>().markOnBoardingComplete();
            context.router.replaceAll([const HomeRoute()]);
          },
          onSkip: () {
            context.read<AppSettingsCubit>().markOnBoardingComplete();
            context.router.replaceAll([const HomeRoute()]);
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Palette.Primary,
            color: Colors.grey,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
