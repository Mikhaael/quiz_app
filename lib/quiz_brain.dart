import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  // ignore: prefer_final_fields
  List<Question> _questionBank = [
    Question(questionText: 'Who is your hero?', questionAnswer: false),
    Question(questionText: 'If you could live anywhere, where would it be?', questionAnswer: true),
    Question(questionText: 'What is your biggest fear?', questionAnswer: false),
    Question(questionText: 'What is your favorite family vacation?', questionAnswer: true),
    Question(questionText: 'What would you change about yourself if you could?', questionAnswer: true),
    Question(questionText: 'What really makes you angry?', questionAnswer: false),
    Question(questionText: 'What motivates you to work hard?', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
