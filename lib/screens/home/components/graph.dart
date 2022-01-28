import 'dart:ui';

import 'package:delline/screens/brends/brends.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _asyncInputDialog(context);
      },
      child: Container(
        height: 91.h,
        width: 255.w,
        decoration: BoxDecoration(
          color: AppColors.appYellow,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/app_icon/ic_graph.png',
                height: 28.h,
                width: 23.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Отчёты',
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
          var selVal = 0;
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
                      'assets/app_icon/ic_graph.png',
                      height: 16.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Отчёты',
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
                    height: 15.h,
                  ),
                  Column(
                    children: [
                      RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Ежедневные отчёты"),
                        value: 0,
                        groupValue: selVal = 0,
                        onChanged: (value) {setState(() {
                          selVal = 0;
                        });},
                      ),
                      RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Клиентская Акт-Сверка"),
                        value: 1,
                        groupValue: selVal,
                        onChanged: (value) {setState(() {
                          selVal = 1;
                        });},
                      ),
                      RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Дебит кредит"),
                        value: 2,
                        groupValue: selVal,
                        onChanged: (value) {setState(() {
                          selVal = 2;
                        });},
                      ),
                    ],
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
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> BrendScreen.screen()));
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
