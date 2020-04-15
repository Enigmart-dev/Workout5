import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:workoutapp/util/global_data.dart';
import 'package:workoutapp/util/ui_layout.dart';
import 'package:workoutapp/views/start_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
              //locale: DevicePreview.of(context).locale, // <--- Add the locale
              //builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: Brightness.dark,
              backgroundColor: Color(0xFFD9E8F3),
              primaryColor: Color(0xFF3E65FF),
            ),
            home: AppData(
              child: StartPage(),
            ));
        }
      ),
    );
  }
}
