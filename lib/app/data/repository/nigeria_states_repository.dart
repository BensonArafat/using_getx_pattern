import 'dart:convert';

import 'package:http/http.dart' as http;

class NigeriaStatesRepository {
  static var client = http.Client();

  static Future<Map<String, dynamic>> getState() async {
    var url = Uri.parse("https://locus.fkkas.com/api/states");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      Map<String, dynamic> error = jsonDecode(response.reasonPhrase!);
      return error;
    }
  }
}
