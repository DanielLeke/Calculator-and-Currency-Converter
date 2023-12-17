// ignore_for_file: unused_field, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String displayExp = "";
  final Key _textKey = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();
  final List<double> answerArr = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Icon(
              Icons.apps,
              size: 40,
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.currency_exchange),
              title: const Text("Currency Converter"),
              onTap: () {
                Navigator.pushNamed(context, '/currencyconverterpage');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
        title: const Text(
          "Calculator",
        ),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: TextField(
              controller: _textEditingController,
              style: const TextStyle(fontSize: 40, color: Colors.black),
              enabled: true,
              textAlign: TextAlign.end,
            ),
          ),
          const Expanded(
            child: ButtonsGrid(),
          ),
        ],
      ),
    );
  }

  void updateDisplayExp(dynamic newExp) {
    setState(() {
      _textEditingController.text += newExp;
    });
  }

  double evaluateExpression(String expression) {
    if (expression.contains('×')) {
      expression = expression.replaceAll('×', '*');
    }
    if (expression.contains("÷")) {
      expression = expression.replaceAll("÷", "/");
    }
    if (expression.contains("%")) {
      expression = expression.replaceAll("%", "*(1/100)");
    }
    if (expression.contains("Ans")) {
      expression =
          expression.replaceAll("Ans", "${answerArr[answerArr.length - 1]}");
    }
    Parser p = Parser();
    ContextModel cm = ContextModel();
    Expression exp = p.parse(expression);
    double result = exp.evaluate(EvaluationType.REAL, cm);
    return result;
  }
}

class ButtonsGrid extends StatefulWidget {
  const ButtonsGrid({Key? key}) : super(key: key);

  @override
  State<ButtonsGrid> createState() => _ButtonsGridState();
}

class _ButtonsGridState extends State<ButtonsGrid> {
  @override
  Widget build(BuildContext context) {
    _MyCalculatorState calculatorState =
        context.findAncestorStateOfType<_MyCalculatorState>()!;
    return Container(
      child: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 3,
        ),
        childrenDelegate: SliverChildListDelegate([
          ElevatedButton(
            onPressed: () {
              calculatorState.updateDisplayExp("%");
            },
            child: const Icon(Icons.percent),
          ),
          ElevatedButton(
              onPressed: () {
                calculatorState._textEditingController.text = "";
              },
              child: const Icon(Icons.delete)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (calculatorState._textEditingController.text.isNotEmpty ==
                      true) {
                    calculatorState._textEditingController.text =
                        calculatorState._textEditingController.text.substring(
                            0,
                            calculatorState._textEditingController.text.length -
                                1);
                  }
                });
              },
              child: const Icon(Icons.backspace)),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("+");
              },
              child: const Icon(Icons.add)),
          ElevatedButton(
            onPressed: () {
              calculatorState.updateDisplayExp("1");
            },
            child: const Text("1"),
          ),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("2");
              },
              child: const Text("2")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("3");
              },
              child: const Text("3")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("-");
              },
              child: const Icon(Icons.remove)),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("4");
              },
              child: const Text("4")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("5");
              },
              child: const Text("5")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("6");
              },
              child: const Text("6")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("×");
              },
              child: const Icon(Icons.close)),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("7");
              },
              child: const Text("7")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("8");
              },
              child: const Text("8")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("9");
              },
              child: const Text("9")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("÷");
              },
              child: const Text(
                "÷",
                style: TextStyle(fontSize: 32),
              )),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("0");
              },
              child: const Text("0")),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp(".");
              },
              child: const Text(
                ".",
                style: TextStyle(fontSize: 40),
              )),
          ElevatedButton(
              onPressed: () {
                calculatorState.updateDisplayExp("Ans");
              },
              child: const Text("Ans")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  calculatorState._textEditingController.text = calculatorState
                      .evaluateExpression(
                          calculatorState._textEditingController.text)
                      .toString();
                  calculatorState.answerArr.add(double.parse(
                      calculatorState._textEditingController.text));
                });
              },
              child: const Text(
                "=",
                style: TextStyle(fontSize: 40),
              )),
        ]),
      ),
    );
  }
}
