import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionChecker {
  final Connectivity _connectivity = Connectivity();

  Future<bool> hasConnection() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
