// ignore_for_file: avoid_print

import 'package:bixos_project/core/functions/line_number.dart';
import 'package:bixos_project/core/keys/global_key.dart';

class Go {
  static Go to = Go._init();
  Go._init();

  Future<dynamic> page(String routeName, {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!.pushNamed(routeName, arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  Future<dynamic> pageAndReplace(String routeName, {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  Future<dynamic> pageAndRemoveUntil(String routeName, {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!
          .pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  dynamic back({Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return GlobalContextKey.instance.globalKey.currentState!.pop(arguments);
    } else {
      currentStateNullError();
    }
  }

  void currentStateNullError() {
    print("GlobalKey.instance.currentState is null | route_manager.dart | $lineNumber  ");
  }
}
