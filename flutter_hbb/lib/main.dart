import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common.dart';
import 'home_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ffi = FfiModel();
    return ChangeNotifierProvider.value(
        value: ffi,
        child: MaterialApp(
          title: 'RustDesk',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: FlutterEasyLoading(child: HomePage(title: 'RustDesk')),
        ));
  }
}
