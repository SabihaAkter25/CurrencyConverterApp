import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'currency_converter_cupertino_page.dart';
import 'currency_converter_material_page.dart';
void main(){
  runApp(const  MyCupertinoApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: converterApp(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key, });

  @override
  Widget build(BuildContext context) {
    return  CupertinoApp(
       home: CurrencyConverterCupertinoPage(),
    );
  }
}
