import 'package:expenditure/core/resume.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core_functions.dart';
import 'loading_view.dart';
abstract class CoreScreen<T extends ConsumerStatefulWidget> extends ConsumerState<T>
    with WidgetsBindingObserver,CoreFunctions {
  Resume resume = Resume();
  bool _isPaused = false;
  LoadingView? loadingView;
  Dialog? dialog;

  void log(String data) {
    if (kDebugMode) {
     // print('${getNameScreenOpening()} ✅ $data');
      print('[${context.widget.runtimeType}] ✅ $data');
    }
  }

  @override
  void initState() {
    super.initState();
    initAll();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    disposeAll();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    //  print('state $state');
    if (state == AppLifecycleState.paused) {
      if (!_isPaused) {
        onPause();
      }
      //log('GeneralScreen paused');
    }
    if (state == AppLifecycleState.resumed) {
      if (!_isPaused) {
        onResume();
      }
    }
    if (state == AppLifecycleState.detached) {
      onDestroy();
    }
  }

  @override
  void initAll() {
    super.initAll();
    loadingView = LoadingView();
  }

  @override
  void disposeAll() {
    dismissLoading();
    loadingView =null;
    super.disposeAll();

  }
  void dismissLoading() {
    if (loadingView != null) {
      loadingView!.hide();
      loadingView = null;
    }
  }
  void showLoading(bool show) {
    loadingView ??= LoadingView();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        if (show) {
          loadingView!.show(context);
        } else {
          loadingView!.hide();
        }
      }
    });
  }

  void hideKeyBoard() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(FocusNode());
    });

  }

  // todo handle open screens
  addScreen(Widget screen, [String? source]) {
    _isPaused = true;
    onPause();
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen))
        .then((value) {
      _isPaused = false;
      resume.data = value;
      resume.source = source; // todo resume data
      onResume();
      return value;
    }).whenComplete(() {
      // log('whenComplete');
      // onResume();
    });
  }

  replaceScreen(Widget screen, [String? source]) {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => screen,
      ),
    );
  }

  replaceScreenBackToHome(Widget screen, [String? source]) {
    Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => screen),
            ModalRoute.withName('/'))
        .then((value) {
      _isPaused = false;
      resume.data = value;
      resume.source = source; // todo resume data
      onResume();
      return value;
    });
  }

  String getNameScreenOpening() {
    return context.widget.toString();
  }

  backToScreen() {
    if (mounted) {
      Navigator.of(context).pop();
    }
  }
}
