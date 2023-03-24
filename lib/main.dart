import 'package:flutter/material.dart';
import 'package:kuis_praktpm/list_barang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KUIS PRAKTIKUM TPM',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: ListBarang(),
    );
  }
}
