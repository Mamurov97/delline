import 'package:delline/screens/home/components/buy.dart';
import 'package:delline/screens/home/components/graph.dart';
import 'package:delline/screens/home/components/pay.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 48.h,
                width: 221.w,
                child: Image.asset('assets/app_logo/app_logo_black.png'),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BuyWidget(),
                  SizedBox(
                    width: 20.w,
                  ),
                  const PayWidget(),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              const GraphWidget(),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 44.h,
                          width: 126.w,
                          decoration: BoxDecoration(
                            color: AppColors.appYellow,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/app_icon/ic_pack.png',
                                  height: 28.h,
                                  width: 23.w,
                                ),
                                SizedBox(
                                  width: 8.w,
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
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 44.h,
                          width: 126.w,
                          decoration: BoxDecoration(
                            color: AppColors.appYellow,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/app_icon/ic_pay.png',
                                  height: 28.h,
                                  width: 23.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  'Платежи',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  GestureDetector(
                    onTap: () {},
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
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {},
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
                              'assets/app_icon/ic_settings.png',
                              height: 28.h,
                              width: 23.w,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Настройка',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {},
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
                              'assets/app_icon/ic_refresh.png',
                              height: 28.h,
                              width: 23.w,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Обновить',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
