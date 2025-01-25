import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_proj/Home.dart';
import 'package:provider_proj/model/Cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
      ),
    );
  }
}
