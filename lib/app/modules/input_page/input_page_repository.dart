import 'dart:convert';
import 'package:http/http.dart' as http;

class InputPageRepository {
  Future<List<dynamic>> getSuggestList(String val) async {
    final result = await http.get(Uri.parse(
        'https://open.neis.go.kr/hub/schoolInfo?Type=json&pIndex=1&pSize=100&SCHUL_NM=${val}'));
    return (jsonDecode((result.body)) as Map<String, dynamic>)['schoolInfo'][1]
        ['row'];
  }
}
