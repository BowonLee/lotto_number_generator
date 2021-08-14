
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotto_number_generator/model/NumberGenerator.dart';

class LottoNumberGenerator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    NumberGenerator numberGenerator = new NumberGenerator();
    return Scaffold(
      appBar: AppBar(
        title: Text("Please God....."),
      ),
      body: Text(numberGenerator.toString()),
    );
  }
}
