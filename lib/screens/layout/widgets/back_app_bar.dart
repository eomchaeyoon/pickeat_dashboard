
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pickeat_dashboard/theme/colors.dart';
import 'package:pickeat_dashboard/theme/theme.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String titleString;
  final VoidCallback?  onBackButtonPressed;
  final List<Widget>? actionList;
  final BuildContext context;
  final PreferredSize? bottom;

  const BackAppBar({super.key, required this.titleString, this.onBackButtonPressed, this.actionList, required this.context, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppTheme.softBottomShadow,
      ),
      child: AppBar(
        backgroundColor: AppColors.wh,
        centerTitle: true,
        elevation: 1,
        surfaceTintColor: AppColors.bgL,
        title: Text(titleString, maxLines: 1,overflow: TextOverflow.visible, style: AppTheme.h18MTextStyle.copyWith(color: AppColors.monoColorL800,),),
        leading: IconButton(
          onPressed: () {
            //콜백이 없을 경우
            if(onBackButtonPressed == null) {
              Navigator.of(context).pop();
            }else {
              onBackButtonPressed?.call();
            }
          },
          icon: SvgPicture.asset(
           'assets/icons/arrow_left_24.svg',
            width: 24.0,
            height: 24.0,
          ),
        ),
        actions: actionList,
        bottom: bottom,
      ),
    );
  }

  @override
  Size get preferredSize {
    double bottomHeight = bottom?.preferredSize.height ?? 0.0;
    return Size.fromHeight(48+bottomHeight);
  }

}
