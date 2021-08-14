
import 'package:flutter/material.dart';
import 'package:lotto_number_generator/view/LottoNumberGenerator.dart';

void main() {
  runApp(LottoNumberGenerator());
}


class AppBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    String _title = "Lotto!";
    return MaterialApp(
      title: _title,
      home: LottoNumberGenerator(),
    );
  }}
