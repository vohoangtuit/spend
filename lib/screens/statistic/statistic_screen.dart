import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> with AutomaticKeepAliveClientMixin<StatisticScreen>{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.statistic),
      body: _viewContent(),
    );
  }
  Widget _viewContent() {
    return Container(
      margin: EdgeInsets.only(left:10,right:10,bottom: 70),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
