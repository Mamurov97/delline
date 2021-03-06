import 'package:delline/screens/login/login_bloc/login_bloc.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static Widget screen() => BlocProvider(
        create: (context) => LoginBloc(context),
        child: const LoginScreen(),
      );

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  bool _eyeTap = false;

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
                  textAlignVertical: const TextAlignVertical(y: 1),
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.appBlack,
                  ),
                  controller: _controllerLogin,
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
                    hintText: "??????????",
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
                  textAlignVertical: const TextAlignVertical(y: 1),
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.appBlack,
                  ),
                  controller: _controllerPass,
                  obscureText: !_eyeTap,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                      color: AppColors.appGrey,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _eyeTap = !_eyeTap;
                        });
                      },
                      child: Icon(
                        (_eyeTap)
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        size: 18.sp,
                        color: AppColors.appGrey,
                      ),
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    fillColor: Colors.white,
                    hintText: "??????????",
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
                    bloc.add(ButtonPressedEvent(logController: _controllerLogin, passController: _controllerPass,));
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
                    '??????????',
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
