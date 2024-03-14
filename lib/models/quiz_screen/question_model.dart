class QuestionModel {
 late String _question;
  late List<dynamic> _listAnswers;
  late int _correctAnswer;

  QuestionModel(
      {required String question,
      required List<dynamic> listAnswers,
      required int correctAnswer}) {
    _question=question;
    _listAnswers=listAnswers;
    _correctAnswer=correctAnswer;
  }

 int get correctAnswer => _correctAnswer;

  set correctAnswer(int value) {
    _correctAnswer = value;
  }

  List<dynamic> get listAnswers => _listAnswers;

  set listAnswers(List<dynamic> value) {
    _listAnswers = value;
  }

  String get question => _question;

  set question(String value) {
    _question = value;
  }
}
