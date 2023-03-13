import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/screens/detail_champion.dart';

class Champion extends StatefulWidget {
  const Champion({super.key});

  @override
  State<Champion> createState() => _ChampionState();
}

class _ChampionState extends State<Champion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: OpenContainer(
                transitionDuration: const Duration(seconds: 1),
                openBuilder: (context, action) => const DetailChampion(),
                closedBuilder: (context, VoidCallback openContainer) => InkWell(
                  onTap: openContainer,
                  child: Container(
                    height: 400.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 270.w,
                          height: 200.h,
                          child: Image.asset(
                            "images/jin.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50.h),
                          child: Text(
                            "대충 애니메이션 공부를 위한 글씨입니다",
                            style:
                                TextStyle(fontSize: 17.sp, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
