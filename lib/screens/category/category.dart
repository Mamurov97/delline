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
                    'Samsung',
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
                    'Холодильники',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isGrid = !_isGrid;
                      });
                    },
                    child: SizedBox(
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
                child: (_isGrid)
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 110,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: 12,
                        itemBuilder: (BuildContext ctx, index) {
                          return myCard(index, ctx);
                        })
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: myCard(index, context),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
