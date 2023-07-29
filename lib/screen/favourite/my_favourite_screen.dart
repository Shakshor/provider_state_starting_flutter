import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_starting/provider/favourite_provider.dart';


class MyFavouriteItemScreen extends StatefulWidget {
  const MyFavouriteItemScreen({super.key});

  @override
  State<MyFavouriteItemScreen> createState() => _MyFavouriteItemScreenState();
}

class _MyFavouriteItemScreenState extends State<MyFavouriteItemScreen> {
  @override
  Widget build(BuildContext context) {

    final favouriteItemProvider = Provider.of<FavouriteItemProvider>(context);

    print('build');

    return Scaffold(

      appBar: AppBar(
        title: Text('My Favourite Screen',
          style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [

          Icon(Icons.favorite),
          SizedBox(width: 23,)

        ],
      ),

      body: Column(

        children: [

          Expanded(
              child: ListView.builder(
                  itemCount: favouriteItemProvider.selectedItem.length,
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
