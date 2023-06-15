import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_starting/provider/count_provider.dart';


class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  // int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final countProvider = Provider.of<CountProvider>(context, listen: false);

    // timer function
    // Timer.periodic(Duration(seconds: 3), (timer) {
    //
    //     countProvider.setCount();
    //
    // });

  }



  @override
  Widget build(BuildContext context) {

    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(

      appBar: AppBar(
        title: Text('State Management'),
      ),

      body: Center(

        child: Consumer<CountProvider>(builder: (context, value, child){
          print('build this widget only');
          return Text(value.count.toString(), style: const TextStyle(fontSize: 50),);
        }
        ),
      ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            countProvider.setCount();
          },
          child: Icon(Icons.add),
        )

    );
  }
}
