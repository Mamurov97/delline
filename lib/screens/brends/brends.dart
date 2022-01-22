
import 'package:delline/screens/brends/components/grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/app_bar.dart';

class BrendScreen extends StatefulWidget {
  const BrendScreen({Key? key}) : super(key: key);

  @override
  _BrendScreenState createState() => _BrendScreenState();
}

class _BrendScreenState extends State<BrendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 26),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Бренды',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 17.h,),
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2.2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 14,
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
