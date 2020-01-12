import 'question.dart';

class QuestionBank {
  List<Question> _questionBank = [
    Question(q: 'Nice day', a: true),
    Question(q: 'SPOS day', a: false),
    Question(q: 'dwada day', a: true),
  ];

  int indexOfQuestion = 0;
  List<Question> returnQuestions() {
    return _questionBank;
  }

  String questionText() {
    return _questionBank[indexOfQuestion].questionName;
  }

  bool checkAnswer(bool b) {
    if (b == _questionBank[indexOfQuestion].answer) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (indexOfQuestion < _questionBank.length - 1) {
      indexOfQuestion++;
    }
  }
}
