import 'dart:ui';

import 'package:delline/screens/home/components/cart.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareWidget extends StatelessWidget {
  const ShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _asyncInputDialog(context);
      },
      child: Container(
        height: 91.h,
        width: 126.w,
        decoration: BoxDecoration(
          color: AppColors.appYellow,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/app_icon/ic_share.png',
                height: 28.h,
                width: 23.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Отправить',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _asyncInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6,
              sigmaY: 6,
            ),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              title: Container(
                height: 30.h,
                width: 322.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  color: AppColors.appYellow,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset(
                      'assets/app_icon/ic_share.png',
                      height: 16.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Отправить',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.appBlack,
                      ),
                    ),
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/app_icon/ic_otpr.png',
                          height: 18.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 8.w,),
                        Text(
                          'Отправить документы?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        height: 28.h,
                        minWidth: 104.w,
                        color: AppColors.appYellow,
                        child: Text(
                          'Нет',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartScreen()));
                        },
                        height: 28.h,
                        minWidth: 104.w,
                        color: AppColors.appYellow,
                        child: Text(
                          'Да',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                ],
              ),
              elevation: 10.0,
              contentPadding: const EdgeInsets.symmetric(horizontal: 19),
              titlePadding: const EdgeInsets.all(0),
            ),
          );
        });
  }
}
