import 'package:delline/data/brends_model.dart';
import 'package:delline/screens/brends/brends_bloc/brends_bloc.dart';
import 'package:delline/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/app_bar.dart';

class BrendScreen extends StatefulWidget {
  static Widget screen() =>
      BlocProvider(
        create: (context) => BrendsBloc(context),
        child: const BrendScreen(),
      );

  const BrendScreen({Key? key}) : super(key: key);

  @override
  _BrendScreenState createState() => _BrendScreenState();
}

class _BrendScreenState extends State<BrendScreen> {
  late BrendsBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<BrendsBloc>(context);
    bloc.add(LaunchEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrendsBloc, BrendsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: buildBody(state),
        );
      },
    );
  }
  Widget buildBody(BrendsState state){
    if (state is LoadingState) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state is ListState){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 26),
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
              SizedBox(
                height: 17.h,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2.2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: state.brendList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () => bloc.add(ItemPressed(title: Brends.brandMap.values.toList()[index])),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.cardGrey,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Image.asset(
                              '${state.brendList[index]}'),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    }
    if (state is FailState) {
      return Center(
        child: Text(
          state.message,
          style: const TextStyle(fontSize: 18),
        ),
      );
    }
    return const SizedBox();
  }
}
