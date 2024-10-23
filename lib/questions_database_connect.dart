import 'package:futmitepadi/pages/pre_test1/question_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataBaseConnect {
  final url = Uri.parse(
      'https://futmite-padi-default-rtdb.firebaseio.com/questions.json');

  Future<List<Question>> fetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}
