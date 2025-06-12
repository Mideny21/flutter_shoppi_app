import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/onbaording/presentation/cubit/on_boarding_cubit.dart';
import 'package:shoppi/features/onbaording/presentation/widgets/dot_indicator.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String svg;
  final PageController controller;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.svg,
    required this.controller,
  });

  @override
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    final currentIndex = context.watch<OnboardingCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SvgPicture.asset(
                  svg,
                  height: 200,
                  semanticsLabel: 'onboarding svg',
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 25),
                DotIndicator(
                  itemCount: cubit.totalPages,
                  currentIndex: currentIndex,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  cubit.skipToLast();
                  controller.jumpToPage(cubit.totalPages - 1);
                },
                child: Text("Skip", style: TextStyle(color: Palette.Primary)),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Palette.Primary),
                ),
                onPressed: () {
                  if (cubit.isLastPage) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Onboarding Completed!')),
                    );
                  } else {
                    cubit.nextPage();
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text(
                  cubit.isLastPage ? 'Done' : 'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
