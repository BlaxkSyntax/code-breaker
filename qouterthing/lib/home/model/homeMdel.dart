
import 'dart:convert';

class Quotes {
  Quotes({
    required this.id,
    required this.text,
    required this.name,
  });

  int id;
  String text;
  String name;

  factory Quotes.fromRawJson(String str) => Quotes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quotes.fromJson(Map<String, dynamic> json) => Quotes(
        id: json["id"],
        text: json["text"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "name": name,
      };
}
