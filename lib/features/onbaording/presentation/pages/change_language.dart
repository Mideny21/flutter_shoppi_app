import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shoppi/features/onbaording/language.dart';

@RoutePage()
class ChooseLangauageScreen extends StatefulWidget {
  const ChooseLangauageScreen({super.key});

  @override
  State<ChooseLangauageScreen> createState() => _ChooseLangauageScreenState();
}

class _ChooseLangauageScreenState extends State<ChooseLangauageScreen> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.change_language,
        showBackButton: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SwitchLangOption(
                imagePath: 'assets/images/tz_flag.png',
                value: 'Swahili',
                groupValue: selectedLanguage,
                onChanged: (val) {
                  context.read<AppSettingsCubit>().changeLanguage('sw');

                  setState(() => selectedLanguage = val!);
                },
              ),
              Divider(),
              SwitchLangOption(
                imagePath: 'assets/images/eng_flag.png',
                value: 'English',
                groupValue: selectedLanguage,
                onChanged: (val) {
                  context.read<AppSettingsCubit>().changeLanguage('en');

                  setState(() => selectedLanguage = val!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
