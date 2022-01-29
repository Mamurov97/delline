import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 230.h,
              width: 375.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/app_logo/appbargeometry.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                          size: 22,
                        ),
                      ),
                      Text(
                        "Меню",
                        style: TextStyle(
                          color: AppColors.appBlack,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/app_icon/ic_info.png'),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60.r,
                    child: Image.asset(
                      'assets/app_icon/profile.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 58.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.lock_outlined,
                    size: 22,
                  ),
                ),
                Text(
                  'Изменить пароль',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info_outline,
                    size: 22,
                  ),
                ),
                Text(
                  'О программе',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                    size: 22,
                  ),
                ),
                Text(
                  'Выйти',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
