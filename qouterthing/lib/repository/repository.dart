import 'package:qouterthing/home/model/homeMdel.dart';

abstract class HomeRepo {
  Future<List<Quotes>> getAllQoutes();
  Future<Quotes> addQuote(String text, String name);
}
