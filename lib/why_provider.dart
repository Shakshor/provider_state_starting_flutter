import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({Key? key}) : super(key: key);

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {

  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    
    Timer.periodic(Duration(seconds: 1), (timer) {

      count++;
      // print(count);
      setState(() {

      });

    });
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Provider state management'),
      ),

      // body
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,


        children: [

          Center(
              child: Text(DateTime.now().hour.toString() +":"+DateTime.now().minute.toString()+':'+DateTime.now().second.toString(),style: TextStyle(fontSize: 50),)
          ),

          Center(
              child: Text( count.toString() ,style: TextStyle(fontSize: 50),)
          ),

        ],
      ),


    );
  }
}
