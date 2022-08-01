import 'package:poke_api/models/model.dart';
import 'package:http/http.dart' as http;
class RemoteService {
  Future<Post> getPost() async {
    var client = http.Client();
    var uri = Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGo-Pokedex/master/pokedex.json');
    var response = await client.get(uri);
    if (response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }
    else {
      throw Exception(response.statusCode);
    }
  }
}