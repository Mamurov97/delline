import 'package:delline/main_navigation.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

myCard(int index, BuildContext context) {
  List<String> _imgList = [
    'samsung',
    'chigo',
    'artel',
    'lg',
    'philips',
    'panasonic',
    'indesit',
    'pioneer',
    'beko',
    'sony',
    'mi',
    'apple',
    'huawei',
    'canon'
  ];
  return GestureDetector(
    onTap: () {Navigator.pushNamed(context, MainNavigationRouteNames.category);},
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.cardGrey,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Image.asset('assets/brend_img/${_imgList[index]}.png'),
    ),
  );
}
