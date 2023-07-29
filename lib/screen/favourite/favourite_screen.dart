import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_starting/provider/favourite_provider.dart';
import 'package:provider_state_management_starting/screen/favourite/my_favourite_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {


  // states
  // List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {

    // final favouriteItemProvider = Provider.of<FavouriteItemProvider>(context);

    print('build');

    return Scaffold(

      appBar: AppBar(
        title: Text('Favourite App',
        style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [

          InkWell(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavouriteItemScreen()));
            },
              child: Icon(Icons.favorite),
          ),
          SizedBox(width: 23,)

        ],
      ),

      body: Column(

        children: [

          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return Consumer<FavouriteItemProvider>(
                        builder: (context, value, child){
                          return ListTile(

                            onTap: (){


                              if(value.selectedItem.contains(index)){
                                value.removeItem(index);
                              }
                              else{

                                value.addItem(index);

                              }


                            },

                            title: Text('Item ${index}'),
                            trailing: Icon(
                                value.selectedItem.contains(index) ? Icons.favorite :Icons.favorite_outline
                            ),
                          );
                        });
                  })
          ),

        ],

      ),



    );
  }
}
