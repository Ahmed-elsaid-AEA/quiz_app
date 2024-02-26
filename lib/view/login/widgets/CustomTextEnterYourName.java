
class CustomTextEnterYourName extends StatelessWidget {
  const CustomTextEnterYourName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        StringsValues.kEnterYourName,
        style: GoogleFonts.baloo2(
          fontSize: FontSize.f18,
          color: ColorManager.kPrimaryColor
            ,fontWeight: FontWeight.w700
        ),
    
      ),
    );
  }
}
