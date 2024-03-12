import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class rUready extends StatelessWidget {
  const rUready({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimeModel>(
      create: (context)=>TimeModel(),
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ARE YOU READY"),
              Consumer<TimeModel>(builder: (context, myModel, child){
                return Text(myModel.countdown.toString());
              })
            ],
          ),
        ),
      ),
    );
  }
}

class TimeModel with ChangeNotifier{
  int countdown = 5;
  
  MyTimer() async{
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
    });
  }
}