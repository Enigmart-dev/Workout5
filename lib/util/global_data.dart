import 'package:flutter/cupertino.dart';

class AppData extends InheritedWidget {
  final String logo = "res/assets/logo-transparent.png";
  final StartData startData = StartData();

  AppData({
    Key key,
    @required Widget child
  }) : super(key: key, child: child);
  static AppData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppData>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}

class StartData {
  final String title = "Training Of The Day";
}