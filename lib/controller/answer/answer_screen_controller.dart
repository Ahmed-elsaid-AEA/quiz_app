import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class AnswerScreenController {
  late Map studentAnswers;
  List<bool> answers = [];

  void getStudentAnswers(Map studentAnswers) {
    this.studentAnswers = studentAnswers;
    compareAnswers();
  }

  void compareAnswers() {
    answers.clear();
    for (int i = 0; i < ConstValue.questionList.length; i++) {
      bool an = studentAnswers[StringsValues.kListCorrectAnswer][i] ==
          ConstValue.questionList[i].correctAnswer;
      answers.add(an);
    }
    print(answers);
  }

  void printList() {
    print(studentAnswers);
  }

  int getCountCorrectAnswer() {
    int count = 0;
    for (bool i in answers) {
     if( i == true) {
       count++;
     }
    }
    return count;
  }
}
