import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/features/language/language.dart';

@RoutePage()
class AppEntryScreen extends StatefulWidget {
  const AppEntryScreen({super.key});

  @override
  State<AppEntryScreen> createState() => _AppEntryScreenState();
}

class _AppEntryScreenState extends State<AppEntryScreen> {
  @override
  void initState() {
    super.initState();
    _navigateBasedOnSettings();
  }

  void _navigateBasedOnSettings() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appSettings = context.read<AppSettingsCubit>().state;
      if (!appSettings.isOpen) {
        log.i('App is closed - navigating to language selection');
        context.router.replace(const ChangeLanguageRoute());
      } else {
        log.i('App is open - navigating to home');
        context.router.replace(const DashboardRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("Loading..."),
          ],
        ),
      ),
    );
  }
}
