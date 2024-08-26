import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//1. create a variable that stores the converted currency value
//2. Create a function that multiplies the value given by the textfield
//Store the value that we crated
//4. Display the variable
class converterApp extends StatefulWidget{
  const converterApp({super.key});
  @override
  State<converterApp> createState() => _coverterAppState();
}
class _coverterAppState extends State<converterApp>{
  double result = 0;
    final TextEditingController textEditingController= TextEditingController();

  void convert(){
    setState(() {
      result = double.parse(textEditingController.text)*81;
    });
  }

    @override
    Widget build(BuildContext context){
if (kDebugMode) {
  print('rebuilt');
}

      const border =  OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      );
      return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            elevation: 0,
            title: const Text("Currency Corverter App"),
            centerTitle: true,
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                    Text(
                         'INR ${result != 0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
                          style:const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      ),

                    Padding(padding:const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: textEditingController,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.monetization_on_rounded),
                            prefixIconColor: Colors.black,
                            hintText: 'Enter amount in INR',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder:border,
                            enabledBorder :border,
                          ),
                          keyboardType: const TextInputType.numberWithOptions(),
                        )
                    ),
                    ElevatedButton(onPressed:(){


                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:(Colors.black),
                          foregroundColor: (Colors.white),
                          maximumSize: (const Size(double.infinity,50)),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ), child: const Text("Click me")
                    ),
                  ]
              )
          )
      );
    }
  }






