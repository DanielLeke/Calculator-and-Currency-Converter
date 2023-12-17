// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  String dropDownItemOne = "Dollar";
  String dropDownItemTwo = "Dollar";
  final TextEditingController _textEditingControllerOne =
      TextEditingController();
  final TextEditingController _textEditingControllerTwo =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[400],
        title: const Text("Currency Converter"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: DropdownButton<String>(
                    value: dropDownItemOne,
                    items: const [
                      DropdownMenuItem(value: "Dollar", child: Text("Dollar")),
                      DropdownMenuItem(value: "Pounds", child: Text("Pounds")),
                      DropdownMenuItem(value: "Euros", child: Text("Euros")),
                      DropdownMenuItem(value: "Naira", child: Text("Naira")),
                      DropdownMenuItem(value: "Rand", child: Text("Rand")),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownItemOne = newValue!;
                      });
                    }),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: TextField(
                  controller: _textEditingControllerOne,
                  style: const TextStyle(fontSize: 20),
                  enabled: true,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.swap_vert),
                iconSize: 45,
                onPressed: () {
                  if (dropDownItemOne == "Dollar" &&
                      dropDownItemTwo == "Pounds") {
                    try {
                      double dollarToPounds =
                          double.parse(_textEditingControllerOne.text) * 0.79;
                      _textEditingControllerTwo.text =
                          dollarToPounds.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Dollar" &&
                      dropDownItemTwo == "Euros") {
                    try {
                      double dollarToEuros =
                          double.parse(_textEditingControllerOne.text) * 0.92;
                      _textEditingControllerTwo.text = dollarToEuros.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Dollar" &&
                      dropDownItemTwo == "Naira") {
                    try {
                      double dollarToNaira =
                          double.parse(_textEditingControllerOne.text) * 802.99;
                      _textEditingControllerTwo.text = dollarToNaira.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Dollar" &&
                      dropDownItemTwo == "Rand") {
                    try {
                      double dollarToRand =
                          double.parse(_textEditingControllerOne.text) * 18.47;
                      _textEditingControllerTwo.text = dollarToRand.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Pounds" &&
                      dropDownItemTwo == "Dollar") {
                    try {
                      double poundsToDollar =
                          double.parse(_textEditingControllerOne.text) * 1.27;
                      _textEditingControllerTwo.text =
                          poundsToDollar.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Pounds" &&
                      dropDownItemTwo == "Euros") {
                    try {
                      double poundsToEuros =
                          double.parse(_textEditingControllerOne.text) * 1.16;
                      _textEditingControllerTwo.text = poundsToEuros.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Pounds" &&
                      dropDownItemTwo == "Naira") {
                    try {
                      double poundsToNaira =
                          double.parse(_textEditingControllerOne.text) *
                              1018.91;
                      _textEditingControllerTwo.text = poundsToNaira.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Pounds" &&
                      dropDownItemTwo == "Rand") {
                    try {
                      double poundsToRand =
                          double.parse(_textEditingControllerOne.text) * 23.43;
                      _textEditingControllerTwo.text = poundsToRand.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Euros" &&
                      dropDownItemTwo == "Dollar") {
                    try {
                      double eurosToDollar =
                          double.parse(_textEditingControllerOne.text) * 1.09;
                      _textEditingControllerTwo.text = eurosToDollar.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Euros" &&
                      dropDownItemTwo == "Pounds") {
                    try {
                      double eurosToPounds =
                          double.parse(_textEditingControllerOne.text) * 0.86;
                      _textEditingControllerTwo.text = eurosToPounds.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Euros" &&
                      dropDownItemTwo == "Naira") {
                    try {
                      double eurosToNaira =
                          double.parse(_textEditingControllerOne.text) * 875.94;
                      _textEditingControllerTwo.text = eurosToNaira.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Euros" &&
                      dropDownItemTwo == "Rand") {
                    try {
                      double eurosToRand =
                          double.parse(_textEditingControllerOne.text) * 19.95;
                      _textEditingControllerTwo.text = eurosToRand.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Naira" &&
                      dropDownItemTwo == "Dollar") {
                    try {
                      double nairaToDollar =
                          double.parse(_textEditingControllerOne.text) * 0.0012;
                      _textEditingControllerTwo.text = nairaToDollar.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Naira" &&
                      dropDownItemTwo == "Pounds") {
                    try {
                      double nairaToPounds =
                          double.parse(_textEditingControllerOne.text) *
                              0.00098;
                      _textEditingControllerTwo.text = nairaToPounds.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Naira" &&
                      dropDownItemTwo == "Euros") {
                    try {
                      double nairaToEuros =
                          double.parse(_textEditingControllerOne.text) * 0.0011;
                      _textEditingControllerTwo.text = nairaToEuros.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Naira" &&
                      dropDownItemTwo == "Rand") {
                    try {
                      double nairaToRand =
                          double.parse(_textEditingControllerOne.text) * 0.023;
                      _textEditingControllerTwo.text = nairaToRand.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Rand" &&
                      dropDownItemTwo == "Dollar") {
                    try {
                      double randToDollar =
                          double.parse(_textEditingControllerOne.text) * 0.054;
                      _textEditingControllerTwo.text = randToDollar.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Rand" &&
                      dropDownItemTwo == "Pounds") {
                    try {
                      double randToPounds =
                          double.parse(_textEditingControllerOne.text) * 0.0043;
                      _textEditingControllerTwo.text = randToPounds.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Rand" &&
                      dropDownItemTwo == "Euros") {
                    try {
                      double randToEuros =
                          double.parse(_textEditingControllerOne.text) * 0.050;
                      _textEditingControllerTwo.text = randToEuros.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == "Rand" &&
                      dropDownItemTwo == "Naira") {
                    try {
                      double randToNaira =
                          double.parse(_textEditingControllerOne.text) * 43.48;
                      _textEditingControllerTwo.text = randToNaira.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  } else if (dropDownItemOne == dropDownItemTwo) {
                    try {
                      double sameDropDownItem =
                          double.parse(_textEditingControllerOne.text) * 1;
                      _textEditingControllerTwo.text =
                          sameDropDownItem.toString();
                    } catch (e) {
                      print("Error converting to double: $e");
                      _textEditingControllerTwo.text = "0.0";
                    }
                  }
                },
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: DropdownButton<String>(
                    value: dropDownItemTwo,
                    items: const [
                      DropdownMenuItem(value: "Dollar", child: Text("Dollar")),
                      DropdownMenuItem(value: "Pounds", child: Text("Pounds")),
                      DropdownMenuItem(value: "Euros", child: Text("Euros")),
                      DropdownMenuItem(value: "Naira", child: Text("Naira")),
                      DropdownMenuItem(value: "Rand", child: Text("Rand")),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownItemTwo = newValue!;
                      });
                    }),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: TextField(
                  controller: _textEditingControllerTwo,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  enabled: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
