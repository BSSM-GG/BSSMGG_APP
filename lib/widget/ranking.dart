import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/model/rank.dart';
import 'package:provider/provider.dart';

class TierRank extends StatefulWidget {
  final List<Rank> ranks;
  const TierRank({Key? key, required this.ranks}) : super(key: key);

  @override
  State<TierRank> createState() => _RankviewState();
}

class _RankviewState extends State<TierRank> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: makeRankList(context, widget.ranks)),
    );
  }
}

List<Widget> makeRankList(BuildContext context, List<Rank> ranks) {
  List<Widget> results = [];

  for (var i = 3; i < ranks.length; i++) {
    results.add(Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 13.h),
      child: Container(
        width: double.infinity,
        height: 75.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 2.h), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 70.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (ranks[i].tier == 1)
                      Image.asset(
                        "images/1.jpg",
                        scale: 3.5,
                      ),
                    if (ranks[i].tier == 2)
                      Image.asset(
                        "images/2.jpg",
                        scale: 3.5,
                      ),
                    if (ranks[i].tier == 3)
                      Image.asset(
                        "images/3.jpg",
                        scale: 3.5,
                      ),
                    if (ranks[i].tier == 4)
                      Image.asset(
                        "images/4.jpg",
                        scale: 3.5,
                      ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h, left: 10.w, top: 5.h),
              child: SizedBox(
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Text(
                        ranks[i].duo,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      "${ranks[i].tier}티어",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "${ranks[i].winrate}%",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "${ranks[i].banRate}%",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
  return results;
}
