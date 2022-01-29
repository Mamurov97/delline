import 'package:delline/screens/brends/brends.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80.h,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BrendScreen.screen()));
                        },
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                          size: 22,
                        ),
                      ),
                      Text(
                        "Бренды",
                        style: TextStyle(
                          color: AppColors.appBlack,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
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
