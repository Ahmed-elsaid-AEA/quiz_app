class AnswerScreenController {
  late Map studentAnswers;

  void getStudentAnswers(Map studentAnswers) {
   this. studentAnswers = studentAnswers;
  }
  void printList(){
    print(studentAnswers);
  }
}
