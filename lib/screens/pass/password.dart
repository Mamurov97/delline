import 'package:delline/screens/pass/components/num_pad.dart';
import 'package:delline/screens/pass/pass_bloc/pass_bloc.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  static Widget screen() => BlocProvider(
        create: (context) => PassBloc(context),
        child: const PasswordScreen(),
      );

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  late PassBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<PassBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  final TextEditingController _pinPutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlack,
      body: Center(
        child: SingleChildScrollView(
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
                  controller: _pinPutController,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  obscuringWidget: Text(
                    '●',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.appYellow,
                      fontSize: 10.sp,
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
                  onCompleted: (value) {
                    bloc.add(
                        PassCompileEvent(passController: _pinPutController));
                  },
                  onChanged: (controllerPin) {},
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              numPad(_pinPutController),
            ],
          ),
        ),
      ),
    );
  }
}
