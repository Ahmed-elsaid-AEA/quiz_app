import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/models/on_boarding_screen/on_boarding_screen_model.dart';
import 'package:quiz_app/models/quiz_screen/question_model.dart';

class ConstValue {
  static List<OnBoardingScreenModel> onBoardingListConst = [
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage1,
        StringsValues.kOnBoardingTitle1, StringsValues.kOnBoardingDesc1),
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage2,
        StringsValues.kOnBoardingTitle2, StringsValues.kOnBoardingDesc2),
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage3,
        StringsValues.kOnBoardingTitle3, StringsValues.kOnBoardingDesc3),
  ];
  static List<QuestionModel> questionList = [
    QuestionModel(
        question: "what is your job as engineer ",
        correctAnswer:0,
        listAnswers: [
          "flutter developer",
          "doctor",
          "teacher",
        ]),
    QuestionModel(
        question: "what is make flutter ",
        correctAnswer:2,
        listAnswers: [
          "microsoft",
          "oracle",
          "google",
          "amazon",
        ]),
    QuestionModel(
        question: "What is the capital of France?",
        correctAnswer: 1,
        listAnswers: [
          "Berlin",
          "Paris",
          "London"

          "Rome",
        ]), QuestionModel(
        question: "Who wrote the play \"Romeo and Juliet\"",
        correctAnswer: 0,
        listAnswers: [
          "William Shakespeare",
          "me",
          "Charles",
          "ahmed",
        ]),
  ];
}
// 1 - what is ................. ( i b c d ) - 1 correct
// 2 - what is ................. ( i b c d 5 ) - 2 correct
/*
* [ (StringQuestion ,  []listAnswer , StringCorrectAnswer )
* */
