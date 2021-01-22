import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class RentData with ChangeNotifier {
  List<AdContainer> _content = [];

  List<AdContainer> get content => _content;

  void setContent(data) {
    _content = data;
    notifyListeners();
  }
}
