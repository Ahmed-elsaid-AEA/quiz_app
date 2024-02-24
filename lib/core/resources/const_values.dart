import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/models/on_boarding_screen/on_boarding_screen_model.dart';

class ConstValue {
  static List<OnBoardingScreenModel> onBoardingListConst = [
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage1,
        StringsValues.kOnBoardingTitle1, StringsValues.kOnBoardingTitle1),
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage2,
        StringsValues.kOnBoardingTitle1, StringsValues.kOnBoardingTitle1),
    OnBoardingScreenModel(AssetsValuesManager.kOnBoardgingImage3,
        StringsValues.kOnBoardingTitle1, StringsValues.kOnBoardingTitle1),
  ];
}
