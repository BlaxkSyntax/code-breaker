// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:http/http.dart' as http;
import 'package:qouterthing/repository/repository.dart';

class HomeRepository implements HomeRepo {
  String uri = 'https://60e1-41-113-184-196.ngrok.io';

  List<Quotes> parseQoutes(String response) {
    final parsed = json.decode(response).cast<Map<String, dynamic>>();
    return parsed.map<Quotes>((json) => Quotes.fromJson(json)).toList();
  }

  @override
  Future<List<Quotes>> getAllQoutes() async {
    var url = Uri.parse('$uri/quotes');
    var respose = await http.get(url);
    print("status code:  ${respose.statusCode}");
    var body = respose.body;

    if (respose.statusCode == 200) {
      print(parseQoutes(body));
      return parseQoutes(body);
    } else {
      throw Exception("failed to load data");
    }
  }

  @override
  Future<Quotes> addQuote(String text, String name) async {
    var url = Uri.parse('$uri/quotes');
    var respose = await http.post(url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(<String, dynamic>{'text': text, 'name': name}));
    print("status code:  ${respose.statusCode}");
    var body = respose.body;

    if (respose.statusCode == 201) {
      return Quotes.fromJson(jsonDecode(body));
    } else {
      throw Exception("failed to load data");
    }
  }
}
