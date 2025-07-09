import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/providers/create_provider.dart';
import 'package:expenditure/screens/expenditure/expenditure_screen.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/screens/income/income_screen.dart';
import 'package:expenditure/screens/setting/setting_screen.dart';
import 'package:expenditure/screens/statistic/statistic_screen.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BaseScreen<MainScreen> {
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int _currentTab=0;
  List<Widget> _lisScreen=[
  ];

  @override
  Widget build(BuildContext context) {
    return deviceScreen(
      child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
        body: _buildPageView(),
          bottomNavigationBar:_buildTabBar()
      ),
    );
  }
  Widget _buildPageView() {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (index) {
            pageChanged(index);
          },
          children:_lisScreen,
        ),
        _viewButtonAdd()
      ],
    );
  }
  Widget _viewButtonAdd(){
    return _currentTab==0||_currentTab==1?Positioned(
      bottom: 70,
      right: 20,
      child: FloatingActionButton(
        onPressed: () async{
          onCreateData();
          // Handle the add button action
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    ):Container();
  }
  Widget _buildTabBar(){
    return Container(
      height: 56.0,
      color: AppColor.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTabItem(0, Icons.money_off_rounded, AppLocalizations.of(context)!.expenditure),
          _buildTabItem(1, Icons.monetization_on_outlined, AppLocalizations.of(context)!.income),
          _buildTabItem(2, Icons.bar_chart_outlined, AppLocalizations.of(context)!.statistic),
          _buildTabItem(3, Icons.settings_outlined, AppLocalizations.of(context)!.setting),
        ],
      ),
    );
  }
  Widget _buildTabItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () => bottomTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: _currentTab == index ? AppColor.primary : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: _currentTab == index ? AppColor.primary : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {

    super.initState();
    _init();
    WidgetsBinding.instance.addPostFrameCallback((_){
      ref.watch(createProvider);
    });

  }
  void _init(){
    if(mounted){
      setState(() {
        _lisScreen =[
          ExpenditureScreen(),
          IncomeScreen(),

          const StatisticScreen(),
          const SettingScreen(),
        ];
      });
    }
  }
  void pageChanged(int index) {// todo Swapping
    setState(() {
      _currentTab = index;
    });
  }
  void bottomTapped(int index) {// todo Tapping
    setState(() {
      _currentTab = index;
      // pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
      _pageController.jumpToPage(_currentTab);
    });
  }

  void onCreateData(){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(_currentTab==0){
        ref.watch(createProvider.notifier).addExpenditure();

      }else if(_currentTab==1){
        ref.watch(createProvider.notifier).addIncome();

      }
    });
  }


}
