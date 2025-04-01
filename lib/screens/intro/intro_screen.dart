
import 'package:flutter/material.dart';
import 'package:pickeat_dashboard/screens/layout/widgets/back_app_bar.dart';
import 'package:pickeat_dashboard/screens/layout/widgets/safe_area_outer_bg.dart';
import 'package:pickeat_dashboard/theme/colors.dart';

class IntroScreen extends StatelessWidget {
  final String title;

  const IntroScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeAreaOuterBg(topColor: AppColors.bgL, bottomColor: AppColors.bgL, contentWidget: SafeArea(
      child: Scaffold(
        appBar: BackAppBar(titleString: title, context: context),
        body: SafeArea(child: Column(
          children: [

          ],
        ),),
      ),
    ),);
  }
}
