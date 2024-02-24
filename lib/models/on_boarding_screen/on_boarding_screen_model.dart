class OnBoardingScreenModel{
  String? _onBoardingImage;
  String? _onBoardingTitle;
  String? _onBoardingDesc;

  OnBoardingScreenModel(String onBoardingImage,
      String onBoardingTitle,  String onBoardingDesc){
    _onBoardingImage=onBoardingImage;
    _onBoardingTitle=onBoardingTitle;
    _onBoardingDesc=onBoardingDesc;
  }

  String get onBoardingDesc => _onBoardingDesc!;

  set onBoardingDesc(String value) {
    _onBoardingDesc = value;
  }

  String get onBoardingTitle => _onBoardingTitle!;

  set onBoardingTitle(String value) {
    _onBoardingTitle = value;
  }

  String get onBoardingImage => _onBoardingImage!;

  set onBoardingImage(String value) {
    _onBoardingImage = value;
  }
}