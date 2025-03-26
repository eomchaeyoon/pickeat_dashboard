

import 'package:flutter/material.dart';
import 'package:pickeat_dashboard/routes/page_info.dart';
import 'package:pickeat_dashboard/screens/layout/layout_screen.dart';
import 'package:pickeat_dashboard/theme/colors.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  //화면 이동
  void _goToPage(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.wh,
        title : Text("pickeat dashboard"),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount : pages.length,
              itemBuilder: (context, index) {
                final pageInfo = pages[index];
                return ElevatedButton(onPressed: () {
                  _goToPage(context, pageInfo.buildScreen(context));
                }, child: Text(pageInfo.title));

              },
            ),
          ),
      ),
    );
  }
}
