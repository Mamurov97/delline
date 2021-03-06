import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'element_card_widget_in_hero.dart';

ScrollController controller = ScrollController();

class CardInGridViewHorizontal {
  String image;
  String title;
  String description;
  int price;
  bool isSelected;

  CardInGridViewHorizontal(
      {required this.image,
      required this.isSelected,
      required this.title,
      required this.description,
      required this.price});
}

List<CardInGridViewHorizontal> cardList = [
  CardInGridViewHorizontal(
    image: 'assets/card_images/holodilnik_black.png',
    title: 'Samsung RT6000K 530л',
    description: 'Система Twin Cooling Plus\n'
        'Инверторный компрессор DIT\n'
        'Функция Power Cool',
    price: 1995000,
    isSelected: false,
  ),
  CardInGridViewHorizontal(
      image: 'assets/card_images/holodilnik_white.png',
      title: 'Samsung RT6000K 530л',
      isSelected: false,
      description: 'Система Twin Cooling Plus\n'
          'Инверторный компрессор DIT\n'
          'Функция Power Cool',
      price: 1995000),
  CardInGridViewHorizontal(
      isSelected: false,
      image: 'assets/card_images/holodilnik_white.png',
      title: 'Samsung RT6000K 530л',
      description: 'Система Twin Cooling Plus'
          'Инверторный компрессор DIT'
          'Функция Power Cool',
      price: 1995000),
  CardInGridViewHorizontal(
      isSelected: false,
      image: 'assets/card_images/holodilnik_white.png',
      title: 'Samsung RT6000K 530л',
      description: 'Система Twin Cooling Plus'
          'Инверторный компрессор DIT'
          'Функция Power Cool',
      price: 1995000),
];

class CardGridWidget extends StatefulWidget {
  const CardGridWidget(
      {Key? key,
      this.image,
      this.selectedItem,
      this.title,
      this.description,
      this.price})
      : super(key: key);
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final bool? selectedItem;

  @override
  _CardGridWidgetState createState() => _CardGridWidgetState();
}

class _CardGridWidgetState extends State<CardGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        children: [
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: 115.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('${widget.image}'),
                Text(
                  '${widget.title}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${widget.description}',
                  style: TextStyle(
                    color: const Color(0xff858585),
                    fontSize: 7.sp,
                  ),
                ),
                Text(
                  '${widget.price} сум',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color:const Color(0xff212121)),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          InkWell(
            borderRadius: BorderRadius.circular(8.r),
            onTap: () {
              for (int i = 0; i < cardList.length; i++) {
                cardList[i].isSelected = true;
              }
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardElementWidgetInHero(),
                  ));
              // debugPrint('${CategoryItemList[index]}');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: AppColors.appYellow,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r),
                ),
              ),
              child: const Text('Узнать больше'),
            ),
          )
        ],
      ),
    );
  }
}

Widget categoriesCardGridHorizontal(BuildContext context) {
  return GridView.builder(
      controller: controller,
      scrollDirection: Axis.vertical,
      itemCount: cardList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 7,
          childAspectRatio: 2 / 4),
      itemBuilder: (context, int index) {
        return Hero(
          tag: cardList[index].isSelected == true,
          child: CardGridWidget(
              selectedItem: cardList[index].isSelected,
              price: cardList[index].price,
              description: cardList[index].description,
              image: cardList[index].image,
              title: cardList[index].title),
        );
      });
}
