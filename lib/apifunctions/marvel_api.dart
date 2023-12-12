// marvel_api.dart

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class MarvelApi {
  final String publicKey = 'e34dac64d6b6b986e4fd55c134dbd906';
  final String privateKey = '79c49d6bd8d94d200e57127d8ed407afac42eb7a';
  final String baseUrl = 'https://gateway.marvel.com/v1/public/';

  String _generateHash(String timeStamp) {
    var bytes = utf8.encode('$timeStamp$privateKey$publicKey');
    var digest = md5.convert(bytes);
    return digest.toString();
  }

  Future<List<Map<String, dynamic>>> _getData(String endpoint) async {
    try {
      final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
      final hash = _generateHash('$timeStamp');

      final response = await http.get(
        Uri.parse('$baseUrl/$endpoint'),
        headers: {
          'Content-Type': 'application/json',
          'apikey': publicKey,
          'ts': timeStamp,
          'hash': hash,
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<Map<String, dynamic>> items = [];

        for (var item in data['data']['results']) {
          items.add({
            'name': item['name'],
            'description': item['description'],
            'thumbnail': item['thumbnail']['path'] +
                '.' +
                item['thumbnail']['extension'],
          });
        }

        return items;
      } else {
        throw Exception('Failed to load $endpoint');
      }
    } catch (e) {
      print('Error fetching $endpoint: $e');
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getCharacters() async {
    return _getData('characters');
  }

  Future<List<Map<String, dynamic>>> getComics() async {
    return _getData('comics');
  }

  Future<List<Map<String, dynamic>>> getSeries() async {
    return _getData('series');
  }

  Future<List<Map<String, dynamic>>> getStories() async {
    return _getData('stories');
  }

  Future<List<Map<String, dynamic>>> getCreators() async {
    return _getData('creators');
  }
}
