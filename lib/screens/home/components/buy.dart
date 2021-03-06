import 'dart:ui';

import 'package:delline/screens/brends/brends.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyWidget extends StatefulWidget {
  const BuyWidget({Key? key}) : super(key: key);

  @override
  State<BuyWidget> createState() => _BuyWidgetState();
}

class _BuyWidgetState extends State<BuyWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _asyncInputDialog(context, _BuyWidgetState());
      },
      child: Container(
        height: 91.h,
        width: 118.w,
        decoration: BoxDecoration(
          color: AppColors.appYellow,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/app_icon/ic_buy.png',
                height: 28.h,
                width: 23.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Заказать',
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

  Future _asyncInputDialog(BuildContext context, State state) async {
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
                      'assets/app_icon/ic_buy.png',
                      height: 16.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Заказать',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/app_icon/ic_market.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 246.w,
                        height: 19.h,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlignVertical: const TextAlignVertical(y: 1),
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.arrow_drop_down, color: Colors.black, size: 20,),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            fillColor: Colors.grey.shade200,
                            hintText: "Магазин ",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/app_icon/ic_loc.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 246.w,
                        height: 19.h,
                        child: TextFormField(
                          textAlignVertical: const TextAlignVertical(y: 1),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            fillColor: Colors.grey.shade200,
                            hintText: "Регион",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                          'Назад',
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
                                  builder: (context) => BrendScreen.screen()));
                        },
                        height: 28.h,
                        minWidth: 104.w,
                        color: AppColors.appYellow,
                        child: Text(
                          'Далее',
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
