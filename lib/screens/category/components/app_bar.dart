import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.appYellow,
        size: 20,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    titleTextStyle: TextStyle(
      color: AppColors.appYellow,
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
    ),
    title: const Text("Меню"),
    leadingWidth: 30,
    backgroundColor: AppColors.appBarBlack,
    bottom: PreferredSize(
      preferredSize: const Size(double.infinity, 70),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/app_icon/ic_pack_yellow.png'),
            const Icon(Icons.search, color: AppColors.appYellow,),
          ],
        ),
      ),
    ),
  );
}
