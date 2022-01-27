import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
List<String> _imgList = [
  'cond',
  'hold',
  'wash',
  'gas',
  'micser',
  'phone',
  'mic',
  'photo',
  'tel',
  'tost',
  'fen',
  'tef',
];
List<String> _countList = [
  '95 техники',
  '42 техники',
  '36 техники',
  '33 техники',
  '10 техники',
  '95 техники',
  '13 техники',
  '60 техники',
  '23 техники',
  '17 техники',
  '17 техники',
  '23 техники',
];
List<String> _titleList = [
  'Кондиционеры',
  'Холодильники',
  'Стиральные \n машины',
  'Газовые плиты',
  'Миксеры',
  'Смартфоны',
  'Микроволновки',
  'Фотоапараты',
  'Телевизор',
  'Тостеры',
  'Фень',
  'Тифалы',
];
class MyCard extends StatefulWidget {
  const MyCard(this.index, {Key? key}) : super(key: key);
  final int? index;
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  Color activeColor = AppColors.cardGrey;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          activeColor = AppColors.appYellow;
        });
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            height: 95.h,
            width: 102.w,
            decoration: BoxDecoration(
              color: activeColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset('assets/category_img/${_imgList[widget.index!]}.png'),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            _titleList[widget.index!],
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            _countList[widget.index!],
            style: TextStyle(
              fontSize: 8.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.appGrey,
            ),
          ),
        ],
      ),
    );
  }
}

