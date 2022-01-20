import 'package:delline/main_navigation.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(36.w),
        height: double.infinity,
        width: double.infinity,
        color: AppColors.appBlack,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40.h,
                width: 181.w,
                child: Image.asset('assets/app_logo/app_logo_yellow.png'),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 35.h,
                width: 281.w,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                      size: 18.sp,
                      color: AppColors.appGrey,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    fillColor: Colors.white,
                    hintText: "Логин",
                    hintStyle: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                height: 35.h,
                width: 281.w,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                      color: AppColors.appGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      size: 18.sp,
                      color: AppColors.appGrey,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    fillColor: Colors.white,
                    hintText: "Парол",
                    hintStyle: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrey,
                    ),
                  ),
                ),
              ),
              Container(
                height: 37.h,
                margin: EdgeInsets.symmetric(vertical: 25.h),
                width: 187.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MainNavigationRouteNames.pass);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.appYellow),
                  ),
                  child: Text(
                    'Войти',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
