import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/screens/account/login_screen.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'passcode_screen.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends BaseScreen<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.setting),
      body: _viewContent(),
    );
  }
  Widget _viewContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _customRow(AppLocalizations.of(context)!.login,(){
            addScreen(LoginScreen());
          }),
          _customRow(AppLocalizations.of(context)!.setPasscode,(){
            addScreen(PasscodeScreen());
          }),
        ],
      ),
    );
  }
  Widget _customRow(String title, VoidCallback onClick) {
    return Column(
      children: [
        GestureDetector(
          onTap: onClick,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: textMedium(title)),
                Icon(Icons.arrow_forward_ios,color: Colors.grey,)
              ],
            ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
