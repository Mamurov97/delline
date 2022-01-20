import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController controllerPin = TextEditingController();
  String truePass = '0000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlack,
      body: Center(
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
              width: 125.w,
              child: PinCodeTextField(
                showCursor: false,
                appContext: context,
                controller: controllerPin,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                obscuringWidget: Center(
                  child: Text(
                    '●',
                    style: TextStyle(
                      color: AppColors.appYellow,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
                enableActiveFill: true,
                pinTheme: PinTheme(
                  fieldHeight: 20.h,
                  fieldWidth: 20.w,
                  borderWidth: 0,
                  shape: PinCodeFieldShape.circle,
                  activeColor: AppColors.pinBlack,
                  selectedColor: AppColors.pinBlack,
                  inactiveColor: AppColors.pinBlack,
                  disabledColor: AppColors.pinBlack,
                  activeFillColor: AppColors.pinBlack,
                  selectedFillColor: AppColors.pinBlack,
                  inactiveFillColor: AppColors.pinBlack,
                  errorBorderColor: AppColors.pinBlack,
                ),
                onCompleted: (value) {(value == truePass)?debugPrint("TRUE"):debugPrint("FALSE");},
                onChanged: (controllerPin) {debugPrint(controllerPin);},
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            Container(
              height: 330.h,
              width: 250.w,
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                radius: (0.65).r,
                colors: const [AppColors.appYellow, AppColors.appBlack],
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controllerPin.text=controllerPin.text+'1';
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
                          print(controllerPin.text);
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
                        child: Container(
                          height: 82.h,
                          width: 82.w,
                          color: AppColors.appBlack,
                          child: Center(
                            child: Icon(
                              Icons.backspace_outlined,
                              color: AppColors.appYellow,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
