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

    try {
      final response = await http.post(
        url,
        body: body,
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        // サーバーからの質問文を取り出す
        return json["info"]?["quesDetail"];
      } else {
        print("API Error: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("通信エラー: $e");
      return null;
    }
  }
}
