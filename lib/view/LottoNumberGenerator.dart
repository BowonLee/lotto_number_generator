import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lotto_number_generator/model/NumberGenerator.dart';

class LottoNumberGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NumberGenerator _numberGenerator = new NumberGenerator();
    List<Flexible> _flexibleList =
        drawCircleList(_numberGenerator.generateNumberList());
    return Scaffold(
        appBar: AppBar(
          title: Text("제발 한번만요..."),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Text("Generated Numbers"),
                ),
                drawNumberContainer(_flexibleList),
                drawGenerateNumberButtonContainer()
              ],
            )
          ],
        ));
  }

  Container drawGenerateNumberButtonContainer() {
    return Container(
      child: Center(
        child: _drawNumGenerateButton(),
      ),
    );
  }

  Container drawNumberContainer(List<Flexible> _flexibleList) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
      ),
      child: Row(children: [..._flexibleList]),
    );
  }

  ElevatedButton _drawNumGenerateButton() {
    return ElevatedButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "Generate New Numbers");
        },
        child: Text("New Numbers"));
  }

  List<Flexible> drawCircleList(List<int> _numList) {
    return _numList
        .map((num) => Flexible(
              child: Container(
                child: Center(
                  child: Text(
                    "$num",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      )
                    ]),
                height: 70,
                width: 70,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
              ),
            ))
        .toList();
  }
}
