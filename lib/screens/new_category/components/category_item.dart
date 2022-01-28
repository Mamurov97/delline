import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


/// 3talik  gridView uchun yasalgan class

class CategoryItem {
  String title;
  String image;
  int number;
  int id;
  bool isActiveColor;

  CategoryItem({
    required this.number,
    required this.title,
    required this.id,
    required this.image,
    required this.isActiveColor,
  });

  get idGetter => id;
}

List categoryList = [
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/conditsionerImage.png',
  'assets/images/category_image/holodilnik.png',
];
const itemsActiveColor = CategoryItems();
// ignore: non_constant_identifier_names
List<CategoryItem> CategoryItemList = [
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 12,
    id: 0,
    title: 'Кондиционеры',
    image: 'assets/category_img/cond.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 2,
    id: 1,
    title: 'Холодильники',
    image: 'assets/category_img/hold.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 2,
    number: 15,
    title: 'Стиральные машины',
    image: 'assets/category_img/wash.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 3,
    number: 14,
    title: 'Газовые плиты',
    image: 'assets/category_img/gas.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 16,
    title: 'Миксеры',
    image: 'assets/category_img/micser.png',
    id: 4,
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 18,
    title: 'Смартфоны',
    image: 'assets/category_img/phone.png',
    id: 5,
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 19,
    title: 'Микроволновки',
    image: 'assets/category_img/mic.png',
    id: 6,
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 7,
    number: 20,
    title: 'Фотоапараты',
    image: 'assets/category_img/photo.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 8,
    number: 112,
    title: 'Телевизор',
    image: 'assets/category_img/tel.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 19,
    title: 'Тостеры',
    image: 'assets/category_img/tost.png',
    id: 9,
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 10,
    number: 20,
    title: 'Фень',
    image: 'assets/category_img/fen.png',
  ),
  CategoryItem(
    id: 11,
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 112,
    title: 'Тифалы',
    image: 'assets/category_img/tef.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    number: 19,
    title: 'Пылесосы',
    image: 'assets/category_img/fen.png',
    id: 12,
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 13,
    number: 20,
    title: 'Витеки',
    image: 'assets/category_img/tef.png',
  ),
  CategoryItem(
    isActiveColor: itemsActiveColor.isActiveColor ?? false,
    id: 14,
    number: 112,
    title: 'Кострюли',
    image: 'assets/category_img/tost.png',
  ),
];

class CategoryItems extends StatefulWidget {
  const CategoryItems(
      {Key? key,
      this.id,
      this.numb,
      this.callback,
      this.titles,
      this.images,
      this.isActiveColor})
      : super(key: key);
  final int? numb;
  final int? id;
  final String? titles;
  final String? images;
  final bool? isActiveColor;
  final VoidCallback? callback;

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  final Color subtitleColor = const Color(0xffA3A3A3);

  // late int index;

  @override
  Widget build(BuildContext context) {
    // bool colorActive = widget.color;

    return Column(
      children: [
        Container(
          height: 5,
          width: MediaQuery.of(context).size.width / 7,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: widget.isActiveColor! ? AppColors.appYellow : Colors.transparent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Card(),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              widget.callback!();
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: widget.isActiveColor!
                          ? AppColors.appYellow
                          : AppColors.cardGrey,
                      borderRadius: BorderRadius.circular(8)),
                  // padding: const EdgeInsets.symmetric(
                  //   horizontal: 9.0,
                  //   vertical: 18,
                  // ),
                  height: 101,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Image.asset(widget.images!),
                  ),
                ),
                SizedBox(height: 5.h,),
                Text(
                  '${widget.titles}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10),
                ),
                Text(
                  '${widget.numb} техники',
                  style: TextStyle(
                    color: subtitleColor,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
