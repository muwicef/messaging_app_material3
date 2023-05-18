import 'package:flutter/material.dart';

import '../data/contacts_data.dart';
import '../models/contact_model.dart';

class MainAppState extends ChangeNotifier {
  MainAppState();

  int selectedIndex = 0;
  List<Contact> sortedContacts = allContacts;
  List firstLetters = [];
  List uniqueLetters = [];
  List indexes = [];
  bool isSorted = false;
  var seen = <String>{};

  void changePage(int index) {
    selectedIndex = index;
    isSorted ? null : sortList();
    notifyListeners();
  }

  void sortList() {
    sortedContacts.sort(
      (a, b) => a.name.compareTo(b.name),
    );

    for (var element in sortedContacts) {
      firstLetters.add(element.name[0]);
    }

    uniqueLetters = firstLetters.where((element) => seen.add(element)).toList();

    for (var element in uniqueLetters) {
      indexes.add(firstLetters.indexOf(element));
    }
  }
}
