
import 'package:flutter/cupertino.dart';

class NewTeacher {
   String? name;
  // final File imagePath;

   NewTeacher({
    required this.name,
    // required this.imagePath,
  });
}

class NewTeacherItem extends ChangeNotifier {
  final List<NewTeacher> _items = [];

  List<NewTeacher> get items => [..._items];

  void addTeacher(String name) {
    _items.add(NewTeacher(name: name));
    notifyListeners();
  }
}
