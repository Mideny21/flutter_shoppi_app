import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/features/language/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shoppi/features/language/model/app_settings.dart';

@RoutePage()
class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.helloWorld)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<AppSettingsCubit>().changeLanguage('sw');
              },
              child: Text('Swahili'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<AppSettingsCubit>().changeLanguage('en');
              },
              child: Text('English'),
            ),
            SizedBox(height: 20),
            BlocConsumer<AppSettingsCubit, AppSettings>(
              listener: (context, state) {
                if (state.isOpen) {
                  context.router.replace(const HomeRoute());
                }
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<AppSettingsCubit>().markOnboardingComplete();
                  },
                  child: Text('Continue'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
