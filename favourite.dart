import 'package:flutter/foundation.dart';

class Favprovider extends ChangeNotifier {
  final List<String> _words = [];
  List<String> get words => _words;

  void toggle(String word) {
    final isexist = _words.contains(word);
    if (isexist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }
    notifyListeners();
  }

  bool isexists(String word) {
    final isexist = _words.contains(word);
    return isexist;
  }
}
