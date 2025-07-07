import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/device_info_model.dart';
import 'package:expenditure/model/user_model.dart';
import 'package:expenditure/screens/account/social.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/utils/device_info.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:expenditure/widgets/widget_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseScreen<LoginScreen> {
  late LoginSocial loginSocial;
  DeviceInfoModel? _deviceInfo;
  @override
  Widget build(BuildContext context) {
    return deviceScreen(child: Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.login),
      body: _viewContent(),
    ));
  }
  Widget _viewContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              loginSocial.loginGoogle(context,(data){
                _handelDataLogin(data);
              },(){
                showMessage('', AppLocalizations.of(context)!.msgErrorLoginSocial);
              });
            },
            child: SizedBox(
              height: SizeView.heightButton,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.update),
                  textMedium("Google"),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginSocial = LoginSocial.getInstance(screen: this);
    _initData();
  }
 void  _initData()async{
    _deviceInfo = await DeviceInfo.getDeviceInfo();

  }
 void _handelDataLogin(UserModel data) async{
    if(_deviceInfo!=null){
      data.deviceType = _deviceInfo!.deviceType!;
      data.deviceName = _deviceInfo!.name!;
    }
    data.clastLogin = DateTime.now().toIso8601String();
    //log(data.toString());
    handleLoginSuccess(data);
  }
}
