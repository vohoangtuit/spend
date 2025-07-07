import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasscodeScreen extends ConsumerStatefulWidget {
  const PasscodeScreen({super.key});

  @override
  ConsumerState<PasscodeScreen> createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends BaseScreen<PasscodeScreen> {
  @override
  Widget build(BuildContext context) {
    return deviceScreen(child: Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.setPasscodeApp),
    ));
  }
}
