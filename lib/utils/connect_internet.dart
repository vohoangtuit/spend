import 'dart:io'; //InternetAddress utility
import 'dart:async'; //For StreamController/Stream

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectInternet{
  final StreamController<bool> _connectionChangeController = StreamController<bool>.broadcast();
  final Connectivity _connectivity = Connectivity();

  bool hasConnection = false;

  Stream<bool> get onConnectionChange => _connectionChangeController.stream;

  ConnectInternet() {
    _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results);
    });
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> results) async {
    bool isConnected = results.any((r) =>
    r == ConnectivityResult.wifi ||
        r == ConnectivityResult.mobile ||
        r == ConnectivityResult.ethernet ||
        r == ConnectivityResult.vpn);

    if (hasConnection != isConnected) {
      hasConnection = isConnected;
      _connectionChangeController.add(isConnected);
    }
  }

  Future<bool> checkConnection() async {
    final results = await _connectivity.checkConnectivity();
    return results.contains(ConnectivityResult.wifi) ||
        results.contains(ConnectivityResult.mobile) ||
        results.contains(ConnectivityResult.ethernet) ||
        results.contains(ConnectivityResult.vpn);
  }

  void dispose() {
    _connectionChangeController.close();
  }
}