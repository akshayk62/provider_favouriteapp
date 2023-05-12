import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:getx/provider/favourite.dart';
import 'package:getx/provider/favourite_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(200).toList();
    final provider = Provider.of<Favprovider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Common Nouns'),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
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
      })),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (() {
            final route =
                MaterialPageRoute(builder: ((context) => const Favouritepage()));
            Navigator.push(context, route);
          }),
          label: const Text('Favourites')),
    );
  }
}
