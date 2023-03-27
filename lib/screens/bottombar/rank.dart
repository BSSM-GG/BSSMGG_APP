import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/provider/emphaisis.dart';
import 'package:plz_set_ward_app/widget/lolranklist.dart';
import 'package:plz_set_ward_app/widget/valranklist.dart';
import 'package:provider/provider.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> with TickerProviderStateMixin {
  Future<bool> onbackpress() async {
    print("뒤로가기 실행됨");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var emphasis = Provider.of<Emphaisis>(context);
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: onbackpress,
          child: AnimatedContainer(
            width: double.infinity,
            height: double.infinity,
            color: emphasis.ispressed
                ? Colors.black.withOpacity(0.9)
                : Colors.white,
            duration: const Duration(milliseconds: 350),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, left: 105.w),
                          child: AnimatedOpacity(
                              opacity: emphasis.ispressed ? 0.0 : 1.0,
                              duration: const Duration(milliseconds: 350),
                              child: Text(
                                "League of legends",
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    color: CommonColor.orange,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, left: 150.w),
                          child: AnimatedOpacity(
                              opacity: emphasis.ispressed ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 350),
                              child: Text(
                                "Valorant",
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    color: CommonColor.red,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: AnimatedOpacity(
                              opacity: emphasis.ispressed ? 0.0 : 1.0,
                              duration: const Duration(milliseconds: 350),
                              child: const LolRankList()),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: AnimatedOpacity(
                              opacity: emphasis.ispressed ? 1.0 : 0.0,
                              duration: const Duration(microseconds: 350),
                              child: const ValRankList()),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
