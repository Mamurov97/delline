import 'dart:ui';

import 'package:delline/screens/home/components/graph_is_brend.dart';
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
          const values = [
            'Ежедневные отчёты',
            'Клиентская Акт-Сверка',
            'Дебит кредит'
          ];
          String selectedValue = values.first;
          return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6,
              sigmaY: 6,
            ),
            child: StatefulBuilder(
              builder: (context, setState) => AlertDialog(
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
                      mainAxisSize: MainAxisSize.min,
                      children: values
                          .map((value) => RadioListTile<String>(
                              activeColor: Colors.black,
                              value: value,
                              title: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              groupValue: selectedValue,
                              onChanged: (value) => setState(() {
                                    selectedValue = value.toString();
                                  })))
                          .toList(),
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
                            if (values[0] == selectedValue) {
                              _asyncInput2Dialog(context);
                            } else if (values[1] == selectedValue) {
                              _asyncInput3Dialog(context);
                            }else{
                              _asyncInput4Dialog(context);
                            }
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
            ),
          );
        });
  }
  Future _asyncInput2Dialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          const values = [
            'Отчёт по бренду',
            'Ежедневные отчёты',
          ];
          String selectedValue = values.first;
          return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6,
              sigmaY: 6,
            ),
            child: StatefulBuilder(
              builder: (context, setState) => AlertDialog(
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
                        'assets/app_icon/ic_calendar.png',
                        height: 16.h,
                        width: 13.w,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Ежедневные отчёты',
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
                      mainAxisSize: MainAxisSize.min,
                      children: values
                          .map((value) => RadioListTile<String>(
                              activeColor: Colors.black,
                              value: value,
                              title: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              groupValue: selectedValue,
                              onChanged: (value) => setState(() {
                                    selectedValue = value.toString();
                                  })))
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _asyncInputDialog(context);
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
                            if (selectedValue == 'Отчёт по бренду') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GraphScreen()));
                            } else {
                              Navigator.pop(context);
                              _asyncInputDialog(context);
                            }
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
            ),
          );
        });
  }
  Future _asyncInput3Dialog(BuildContext context) async {
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
                      'assets/app_icon/ic_calendar.png',
                      height: 16.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Клиентская Акт-Сверка',
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
                          textAlignVertical: const TextAlignVertical(y: 1),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_drop_down,
                                size: 18,
                              ),
                            ),
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
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/app_icon/ic_calendar2.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 246.w,
                        height: 19.h,
                        child: TextFormField(
                          textAlign: TextAlign.center,
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
                            hintText: "-",
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
                          _asyncInputDialog(context);
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GraphScreen()));
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
  Future _asyncInput4Dialog(BuildContext context) async {
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
                      'assets/app_icon/ic_calendar.png',
                      height: 16.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Дебит кредит',
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
                          textAlignVertical: const TextAlignVertical(y: 1),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_drop_down,
                                size: 18,
                              ),
                            ),
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
                        'assets/app_icon/ic_tovar.png',
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
                            hintText: "Группы товара",
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
                        'assets/app_icon/ic_calendar2.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 246.w,
                        height: 19.h,
                        child: TextFormField(
                          textAlign: TextAlign.center,
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
                            hintText: "-",
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
                          _asyncInputDialog(context);
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GraphScreen()));
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
