
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favourite.dart';

class Favouritepage extends StatelessWidget {
  const Favouritepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    final provider = Provider.of<Favprovider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        centerTitle: true,
      ),
      body:ListView.builder(itemBuilder: ((context, index) {
        final word = words[index];
        return ListTile(
          title: Text(word),
          trailing: IconButton(
              onPressed: (() {
                provider.toggle(word);
              }),
              icon: provider.isexists(word)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border)),
        );
      })) ,
    );
  }
}
