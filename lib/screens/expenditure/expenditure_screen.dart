import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpenditureScreen extends ConsumerStatefulWidget {
  const ExpenditureScreen({super.key});

  @override
  ConsumerState<ExpenditureScreen> createState() => _ExpenditureScreenState();
}

class _ExpenditureScreenState extends BaseScreen<ExpenditureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.expenditure),
      body: _viewContent(),
    );
  }
  Widget _viewContent() {
    return Container(
      margin: EdgeInsets.only(left:10,right:10,bottom: 70),
    );
  }
}
