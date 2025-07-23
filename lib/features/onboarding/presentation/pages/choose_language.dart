import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/features/onboarding/onbording.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shoppi/features/onboarding/presentation/cubit/app_settings.dart';

@RoutePage()
class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.choose_language,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                AppLocalizations.of(context)!.select_preferred_language,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 15),

              LanguageOption(
                flag: 'assets/images/tz_flag.png',
                language: 'Kiswahili',
                isSelected:
                    selectedLanguage != null && selectedLanguage == 'sw',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'sw';
                  });
                  context.read<AppSettingsCubit>().changeLanguage('sw');
                },
              ),

              SizedBox(height: 20),

              LanguageOption(
                flag: 'assets/images/eng_flag.png',
                language: 'English',
                isSelected:
                    selectedLanguage != null && selectedLanguage == 'en',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'en';
                  });
                  context.read<AppSettingsCubit>().changeLanguage('en');
                },
              ),

              Spacer(),

              CustomNeumorphicButton(
                onTap: () => context.router.push(OnboardingRoute()),
                text: AppLocalizations.of(context)!.continue_text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
