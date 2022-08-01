import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:qouterthing/repository/repository.dart';

class Controller {
  final HomeRepo _repository;
  String name;
  String text;
  String id;

  Controller(this._repository,this.id,this.text,this.name);

  //GET
  Future<List<Quotes>> fetchQoutesList() async {
    return _repository.getAllQoutes();
  }

  Future<Quotes> addQouteList() async {
    return _repository.addQuote(this.text, this.name);
  }
}
