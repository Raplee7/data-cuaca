import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class CuacaProvider with ChangeNotifier {
  final appid = '9ca5a7d6b1582a3a55a9e4afb9c1ae84';
  List data = [];

  Future ambilData(String kota)async{
    final alamat = 'http://api.openweathermap.org/data/2.5/forecast?q=$kota, ID&appid=$appid';

    try {
      final r = await http.get(Uri.parse(alamat));
      final hasil = jsonDecode(r.body);
      data = hasil['list'];
      notifyListeners();
      return data;
    } catch (e) {
      return null;
    }
  }
}
