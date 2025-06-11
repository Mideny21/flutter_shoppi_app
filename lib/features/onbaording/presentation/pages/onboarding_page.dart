import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/features/onbaording/presentation/cubit/on_boarding_cubit.dart';
import 'package:shoppi/features/onbaording/presentation/widgets/dot_indicator.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final PageController controller;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.color,
    required this.controller,
  });

  @override
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    final currentIndex = context.watch<OnboardingCubit>().state;

    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          Spacer(),

          DotIndicator(itemCount: cubit.totalPages, currentIndex: currentIndex),
          const SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  cubit.skipToLast();
                  controller.jumpToPage(cubit.totalPages - 1);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
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
                child: Text(cubit.isLastPage ? 'Done' : 'Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
