import 'package:delline/data/brends_model.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/app_bar.dart';
import 'components/grid.dart';

class CategoryScreen extends StatefulWidget {
  final int? brendId;

  const CategoryScreen(this.brendId, {Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool _isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 15),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    '${Brends.brandMap.values.toList()[widget.brendId!]}',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appGrey,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Катигории',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appGrey,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '${Brends.brandMap.values.toList()[widget.brendId!]}',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isGrid = !_isGrid;
                      });
                    },
                    icon: SizedBox(
                      height: 15.h,
                      width: 17.w,
                      child: (_isGrid)
                          ? Image.asset('assets/app_icon/ic_drawer.png')
                          : Image.asset('assets/app_icon/ic_catalog.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: (!_isGrid)
                      ? const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 20,
                          mainAxisExtent: 130,
                        )
                      : const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 110,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 20,
                        ),
                  itemCount: 12,
                  scrollDirection: (!_isGrid)?Axis.horizontal:Axis.vertical,
                  itemBuilder: (BuildContext ctx, index) {
                    return MyCard(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
