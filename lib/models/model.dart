import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {

  Post({
    required this.pokemon,
  });

  List<Pokemon> pokemon;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    pokemon: List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "pokemon": List<dynamic>.from(pokemon.map((x) => x.toJson())),
  };
}

class Pokemon {
  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.height,
    required this.weight,
    required this.candy,
  });

  int id;
  String num;
  String name;
  String img;
  String height;
  String weight;
  String candy;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
    id: json["id"],
    num: json["num"],
    name: json["name"],
    img: json["img"],
    height: json["height"],
    weight: json["weight"],
    candy: json["candy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "num": num,
    "name": name,
    "img": img,
    "height": height,
    "weight": weight,
    "candy": candy,
  };
}

class Evolution {
  Evolution({
    required this.num,
    required this.name,
  });

  String num;
  String name;

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
    num: json["num"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "num": num,
    "name": name,
  };
}




// import 'dart:convert';
//
// Post postFromJson(String str) => Post.fromJson(json.decode(str));
//
// String postToJson(Post data) => json.encode(data.toJson());
//
// class Post {
//   Post({
//     required this.forms,
//     required this.height,
//     required this.id,
//     required this.name,
//     required this.weight,
//   });
//
//   List<Species> forms;
//   int height;
//   int id;
//   String name;
//   int weight;
//
//   factory Post.fromJson(Map<String, dynamic> json) => Post(
//     forms: List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
//     height: json["height"],
//     id: json["id"],
//     name: json["name"],
//     weight: json["weight"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
//     "height": height,
//     "id": id,
//     "name": name,
//     "weight": weight,
//   };
// }
//
// class Species {
//   Species({
//     required this.name,
//     required this.url,
//   });
//
//   String name;
//   String url;
//
//   factory Species.fromJson(Map<String, dynamic> json) => Species(
//     name: json["name"],
//     url: json["url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "url": url,
//   };
// }