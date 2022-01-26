import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container numPad(TextEditingController _pinPutController) {
  return Container(
    height: 330.h,
    width: 250.w,
    decoration: BoxDecoration(
      gradient: RadialGradient(
        radius: (0.65).r,
        colors: const [AppColors.appYellow, AppColors.appBlack],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}1';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}2';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}3';
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}4';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}5';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}6';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '6',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}7';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '7',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}8';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}9';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '9',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
              ),
            ),
            GestureDetector(
              onTap: () {
                _pinPutController.text =
                '${_pinPutController.text}0';
                _pinPutController.selection =
                    TextSelection.collapsed(
                        offset: _pinPutController.text.length);
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.appYellow),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_pinPutController.text.isNotEmpty) {
                  _pinPutController.text = _pinPutController.text
                      .substring(
                      0, _pinPutController.text.length - 1);
                  _pinPutController.selection =
                      TextSelection.collapsed(
                          offset: _pinPutController.text.length);
                }
              },
              child: Container(
                height: 82.h,
                width: 82.w,
                color: AppColors.appBlack,
                child: Center(
                  child:
                  Image.asset('assets/app_icon/ic_delete.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}