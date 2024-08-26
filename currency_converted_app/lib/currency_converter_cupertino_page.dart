import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});
  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}
class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {result = double.parse(textEditingController.text) * 81;});
  }
  @override
  Widget build(BuildContext context) {
     return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: Text("Currency Converter App"),
        ),
        backgroundColor: CupertinoColors.systemGrey3,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'INR ${result != 0 ? result.toStringAsFixed(3) : result
                      .toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  )
              ),

              Padding(padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: CupertinoColors.black,
                    ),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefix: const Icon(CupertinoIcons.money_dollar),
                    placeholder: 'Enter amount in INR',
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  )
              ),
              CupertinoButton(
                  onPressed:convert,
                  color: CupertinoColors.black,
                  child: const Text("Click me")
              ),
            ],
          ),
        )
    );
  }
}





