import 'dart:convert';
import 'package:http/http.dart' as http;

class QuestionApi {
  static const String baseUrl = "http://localhost:8080";

  static Future<String?> fetchQuestion(String userId, String quesId) async {
    final url = Uri.parse("$baseUrl/mr");

    final body = jsonEncode({
      "userId": userId,
      "ques": quesId,
    });

    Map<String,dynamic> json = await _postFetch(url, body);
    return json['info']?['quesDetail'];
  }

  static Future<void> registScale(String userId, List<Map<String,dynamic>> ans) async {
    final url = Uri.parse("$baseUrl/mr");

    final body = jsonEncode({
      "userId": userId,
      "scaleEntity": {
        // TODO ループで改善したい。
        // for (int i = 0; i < ans.length; i++) {
        //   ans[i]['id']:ans[i]['value'],
        // }
        "m001": ans[0]['value'],
        "m002": ans[1]['value'],
        "m003": ans[2]['value'],
        "m004": ans[3]['value'],
        "m005": ans[4]['value'],
      }
    });

    await _postFetch(url, body);
  }

  static Future<Map<String,dynamic>> _postFetch(Uri url, Object? body) async {
    try {
      final response = await http.post(
        url,
        body: body,
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        print("API OK: ${json["info"]?["res"]}");
        return json;

      } else {
        print("API Error: ${response.statusCode}");
        return {};
      }

    } catch (e) {
      print("通信エラー: $e");
      return {};
    }
  }
}
