import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class CustomAppBarQuizScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarQuizScreen({
    super.key,
    required this.onTap,
    required this.text,
  });

  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 140,
      leading: InkWell(
        onTap:onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              const Icon(
                size: 17,
                Icons.arrow_back_ios_sharp,
                color: ColorManager.kPrimaryColor,
              ),
              Text(
                StringsValues.kPrevious,
                style: GoogleFonts.baloo2(
                    color: ColorManager.kPrimaryColor,
                    fontSize: FontSize.f12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.baloo2(
            fontSize: FontSize.f18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: ColorManager.kLightWhite,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
