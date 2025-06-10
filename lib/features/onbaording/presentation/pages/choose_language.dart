import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/onbaording/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shoppi/features/onbaording/model/app_settings.dart';

@RoutePage()
class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
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
              BlocConsumer<AppSettingsCubit, AppSettings>(
                listener: (context, state) {
                  if (state.isOpen) {
                    context.router.replace(const HomeRoute());
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    tap: () {},
                    text: AppLocalizations.of(context)!.continue_text,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ElevatedButton.icon(
//                   onPressed: () {
//                     context.read<AppSettingsCubit>().markOnboardingComplete();
//                   },
//                   child: Text('Continue'),
//                 );

class LanguageOption extends StatelessWidget {
  final String flag;
  final String language;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageOption({
    Key? key,
    required this.flag,
    required this.language,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Palette.mainColor : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(flag, height: 24),
            SizedBox(width: 16),
            Expanded(child: Text(language)),
            if (isSelected)
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Palette.mainColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
          ],
        ),
      ),
    );
  }
}
