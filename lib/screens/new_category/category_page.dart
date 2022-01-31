import 'package:delline/data/brends_model.dart';
import 'package:delline/screens/new_category/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/card_grid_horizontal.dart';
import 'components/categories_grid_in_horizontal.dart';
import 'components/category_item.dart';

// ignore: must_be_immutable
class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

var textStyle = TextStyle(color:const Color(0xffB5B5B5), fontSize: 10.sp);
var categoryTextStyle = TextStyle(color:const Color(0xff2d2d2d), fontSize: 10.sp);

class _CategoryPageState extends State<CategoryPage> {
  final Color subtitleColor = const Color(0xffA3A3A3);
  bool activeColor = false;
  int ind = 0;
  final categoryMap = Brends();

  List list = [for (int i = 0; i < CategoryItemList.length; i++) i];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '    ${widget.title}', style: textStyle),
                      TextSpan(text: '     Категории', style: textStyle),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {
                    setState(() {
                      activeColor = !activeColor;
                    });
                  },
                  icon: !activeColor
                      ? Image.asset('assets/app_icon/ic_drawer.png',height: 17.h, width: 15.w,)
                      : Image.asset('assets/app_icon/ic_catalog.png',height: 17.h, width: 15.w,),
                ),
              ],
            ),
            ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: 609.h,
                    maxWidth: 360.w),
                child: activeColor
                    ? isGridViewHorizontal(context)
                    : categoriesGrid(context)),
          ],
        ),
      ),
    );
  }

  Widget categoriesGrid(BuildContext context) {
    return GridView.builder(
        itemCount: CategoryItemList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 5,
            childAspectRatio: 2.002 / 2.55),
        itemBuilder: (context, int index) {
          return CategoryItems(
            isActiveColor: CategoryItemList[index].isActiveColor,
            numb: CategoryItemList[index].number,
            titles: CategoryItemList[index].title,
            images: CategoryItemList[index].image,
            id: CategoryItemList[index].id,
            callback: () {
              setState(() {
                debugPrint(CategoryItemList[index].title);

                for (int i = 0; i < CategoryItemList.length; i++) {
                  if (index == i) {
                    CategoryItemList[index].isActiveColor = true;
                  } else {
                    CategoryItemList[i].isActiveColor = false;
                  }
                }
                activeColor = true;
              });
            },
          );
        });
  }

  Widget isGridViewHorizontal(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 160.h,
                maxWidth: MediaQuery.of(context).size.width * 100),
            child: CategoriesGridHorizontal(
              activeColor: activeColor,
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Холодельники',
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
            Expanded(child: Container()),
            const Text(
              'Посмотреть все',
              style: TextStyle(fontSize: 10),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.black,
            )
          ],
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 420.h,
              maxWidth: 341.w),
          child: categoriesCardGridHorizontal(context),
        ),
      ],
    );
  }
}


