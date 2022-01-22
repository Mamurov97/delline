import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/app_bar.dart';
import 'components/grid.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                    'Samsung',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appGrey,
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Text(
                    'Катигории',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appGrey,
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Text(
                    'Холодильники',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.view_headline)
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 110,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext ctx, index) {
                      return myCard(index, ctx);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
