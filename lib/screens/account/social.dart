import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/user_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginSocial {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // static final LoginSocial _instance = LoginSocial._internal();
  // static LoginSocial get instance => _instance;
 late BaseScreen? screen;
  LoginSocial.getInstance({this.screen}) {
    _initGoogle();
  }
 void _initGoogle() {
    _googleSignIn.signOut();
  }
  Future<void> loginGoogle(BuildContext context_,ValueChanged<UserModel> loginModel,VoidCallback onError) async {
    //context!.showLoading(true);
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      //   GoogleSignInAccount googleSignInAccount = await (_googleSignIn.signIn() as FutureOr<GoogleSignInAccount>);
      GoogleSignInAuthentication? googleSignInAuthentication =
      await googleSignInAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      final UserCredential authResult =
      await _auth.signInWithCredential(credential);
      final User? user = authResult.user;

      if (user != null) {
           print("user.uid: " + user.uid!);
        UserModel login = UserModel();
        login.fullName = user.displayName;
       // login.password = null;
        login.avatar = user.photoURL;
        login.uuid = user.uid; // todo
        login.typeUser=2;
        //login.email = user.email;
        if (user.providerData.isNotEmpty) {
          UserInfo info = user.providerData[0];
          //print('info ${info.toString()}');
          if(info.uid!=null){
            login.socialId =info.uid;
          }
          if (info.email != null) {
            login.email = info.email;
          }
          if (info.phoneNumber != null) {
            login.phoneNumber = info.phoneNumber;
          }
        }
        loginModel(login);
      }
    } catch (error) {
      onError();
      print(error);
    }
  }
}