import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'card_grid_horizontal.dart';

class CardElementWidgetInHero extends StatefulWidget {
  const CardElementWidgetInHero({Key? key}) : super(key: key);

  @override
  _CardElementWidgetInHeroState createState() =>
      _CardElementWidgetInHeroState();
}

class _CardElementWidgetInHeroState extends State<CardElementWidgetInHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 22,
                          color: AppColors.appBlack,
                        )),
                    Text(
                      'Бренды',
                      style: TextStyle(
                          color: const Color(0xff2d2d2d), fontSize: 13.sp),
                    ),
                    // Expanded(child: Card()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Image.asset('assets/app_icon/ic_info.png'),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 677.h,
              maxWidth: 341.w,
            ),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Hero(
                tag: cardList[index].isSelected == true,
                child: CardGridElementWidget(
                    price: cardList[index].price,
                    description: cardList[index].description,
                    image: cardList[index].image,
                    title: cardList[index].title),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            maximumSize: MaterialStateProperty.all(
              Size(324.w, 47.h),
            ),
            backgroundColor: MaterialStateProperty.all(AppColors.appYellow)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Text(
                'Добавить в корзину',
                style: TextStyle(color: const Color(0xff212121), fontSize: 16.sp),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset('assets/app_icon/ic_pack.png')
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class CardGridElementWidget extends StatefulWidget {
  const CardGridElementWidget(
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
  _CardGridElementWidgetState createState() => _CardGridElementWidgetState();
}

class _CardGridElementWidgetState extends State<CardGridElementWidget> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              height: 400.h,
              width: double.infinity,
              child: Image.asset(
                '${widget.image}',
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 55,
        ),
        Container(
          margin: const EdgeInsets.only(left: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.title}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${widget.price} сум',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    '2 100 000 сум',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C)),
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  RatingBar.builder(
                      minRating: 1,
                      itemSize: 15,
                      itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                '${widget.description}',
                style: const TextStyle(
                  color: Color(0xff858585),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
