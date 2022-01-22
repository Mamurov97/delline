import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

myCard(int index) {
  List<String> imgList = [
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
    onTap: () {},
    child: Container(
      height: 73.h,
      width: 157.w,
      decoration: BoxDecoration(
        color: AppColors.cardGrey,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Image.asset('assets/app_img/${imgList[index]}.png'),
    ),
  );
}
