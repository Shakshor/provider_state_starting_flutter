import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_starting/provider/example_one_provider.dart';


class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  // state
  // double value = 1.0;


  @override
  Widget build(BuildContext context) {

    // provider declaration
    // final exampleProvider = Provider.of<ExampleOneProvider>(context , listen: true);


    print('build');

    return Scaffold(

      // appBar
      appBar: AppBar(
        title: Text('Example One Provider'),
      ),

      // main body goes here
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [


          // slider with Consumer widget
          Consumer<ExampleOneProvider>(builder: (context, value, child){

            return // value changing
              Slider(
                min: 0,
                max: 1,

                value: value.value,

                onChanged: (newValue){

                  // print(newValue);
                  // value = newValue;
                  // setState(() {
                  //
                  // });

                  // with provider setValue
                  value.setValue(newValue);



                },);

          }),

          Consumer<ExampleOneProvider>(builder: (context, value, child){
            return Row(

              children: [

                // container - 1
                Expanded(
                  child: Container(

                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: const Center(child: Text('Container1')),
                  ),
                ),

                // container - 2
                Expanded(
                  child: Container(

                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.red.withOpacity(value.value),
                    ),
                    child: const Center(child: Text('Container2')),
                  ),
                ),

              ],

            );
          }),





        ],
      ),


    );
  }
}