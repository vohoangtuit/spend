import 'package:expenditure/database/sharedPre/shared_pre.dart';
import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/providers/setup_single_ton.dart';
import 'package:expenditure/utils/validators.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final container = ProviderContainer();
  container.read(setupProvider); // ✅ Chỉ đọc 1 lần duy nhất
  runApp(UncontrolledProviderScope(container: container,
  child: const SpendApplication()));
}

class SpendApplication extends ConsumerStatefulWidget {
  const SpendApplication({super.key});

  @override
  ConsumerState<SpendApplication> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<SpendApplication> with WidgetsBindingObserver {
  final Locale _locale = const Locale("vi", "VN");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thu chi',
      debugShowCheckedModeBanner: false,
      locale: _locale,
      theme: ThemeData(
        useMaterial3: false,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      builder: (context, widget) {
        MediaQueryData windowData = MediaQueryData.fromView(View.of(context));
        windowData = windowData.copyWith(
          textScaler: TextScaler.linear(gettextScale(context)),
        );
        return MediaQuery(data: windowData, child: widget!);
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MainScreen(),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initSetUp();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _initSetUp() async {
    ref.read(setupProvider); //   ✅ đã khởi tạo ở runApp
    _getDeviceToken();
  }

  void _getDeviceToken() async {
    //   if (mounted) {
    //     SharedPre  sharedPre= await SharedPre.getInstance();
    //     NotificationController notificationController=NotificationController.instance;
    //     await sharedPre.getString(SharedPre.keyDeviceToken).then((deviceToken) {
    //       if (!Utils.isNotEmpty(deviceToken)) {
    //         notificationController.deviceToken().then((token) => {
    //           showLog("token $token"),
    //           if (Utils.isNotEmpty(token))
    //             {
    //               sharedPre.setString(SharedPre.keyDeviceToken, token!),
    //             }
    //         });
    //       }else{
    //         showLog("deviceToken: $deviceToken");
    //       }
    //     });
    //   }
    // }
  }
}


double gettextScale(BuildContext context) {
  double textScale = MediaQuery.textScalerOf(context).scale(1);
  double width = MediaQuery.of(context).size.width;

  if (width <= 321) {
    textScale = 0.82;
  }
  //print('textScale $textScale');
  return textScale;
}
void showLog(String message) {
  if (kDebugMode) {
    print("✅ Spend : $message");
  }
}
// ✅ ❌ ⚠️ 🚫 ⏳ 🚀 🔄 💾 📌 🔍 🎉 👍 📶 🔗