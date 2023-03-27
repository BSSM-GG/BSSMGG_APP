import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/model/lrank.dart';
import 'package:plz_set_ward_app/model/vrank.dart';

class ValRankList extends StatefulWidget {
  const ValRankList({super.key});

  @override
  State<ValRankList> createState() => _LolRankListState();
}

class _LolRankListState extends State<ValRankList> {
  final List<ValRank> valranks = <ValRank>[];

  @override
  void initState() {
    super.initState();
    valranks.add(ValRank("Radiant", 1, "", "userName", "조용제", 3, 1));
    for (int i = 0; i < 3; i++) {
      valranks.add(ValRank("Immortal 3", 1, "", "userName", "조용제", 3, 1));
    }
    for (int i = 0; i < 5; i++) {
      valranks.add(ValRank("Diamond 2", 1, "", "userName", "조용제", 3, 1));
    }
    for (int i = 0; i < 2; i++) {
      valranks.add(ValRank("Gold 3", 1, "", "userName", "조용제", 3, 1));
    }
    for (int i = 0; i < 8; i++) {
      valranks.add(ValRank("Bronze 1", 1, "", "userName", "조용제", 3, 1));
    }
  }

  int tierColor(String tier) {
    if (tier == "Unrated") {
      return 0xff000000;
    } else if (tier.contains("Iron")) {
      return 0xFFABABAB;
    } else if (tier.contains("Bronze")) {
      return 0xFFD07C16;
    } else if (tier.contains("Silver")) {
      return 0xffc0c0c0;
    } else if (tier.contains("Gold")) {
      return 0xffffd700;
    } else if (tier.contains("Platinum")) {
      return 0xff00bfff;
    } else if (tier.contains("Diamond")) {
      return 0xff00ffff;
    } else if (tier.contains("Ascendant")) {
      return 0xFF63F9B3;
    } else if (tier.contains("Immortal")) {
      return 0xFFFF5C5C;
    } else if (tier.contains("Radiant")) {
      return 0xFFE6A02F;
    }

    return 0xff000000;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 1.h,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Container(
                    height: 145.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(tierColor(valranks[1].ranking))
                                .withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 6.0,
                            offset:
                                Offset(0, 3.h), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        border: Border.all(
                            color: Color(tierColor(valranks[1].ranking)))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.h, bottom: 7.h),
                          height: 50.h,
                          width: 50.w,
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 50.h,
                          ),
                        ),
                        Text(
                          valranks[1].userName,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14.sp,
                            color: CommonColor.red,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          valranks[1].name,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 15.sp,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Container(
                          width: 80.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 0.2.w),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.r)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            valranks[1].ranking,
                            style: TextStyle(fontSize: 11.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 170.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(tierColor(valranks[0].ranking))
                              .withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 6.0,
                          offset: Offset(0, 3.h), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      border: Border.all(
                          color: Color(tierColor(valranks[0].ranking)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.h, bottom: 7.h),
                        height: 50.h,
                        width: 50.w,
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.grey,
                          size: 50.h,
                        ),
                      ),
                      Text(
                        valranks[0].userName,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 16.sp,
                          color: CommonColor.red,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        valranks[0].name,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 15.sp,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 85.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2.w),
                          borderRadius: BorderRadius.all(Radius.circular(30.r)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          valranks[0].ranking,
                          style: TextStyle(fontSize: 11.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Container(
                    height: 145.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(tierColor(valranks[2].ranking))
                                .withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 6.0,
                            offset:
                                Offset(0, 3.h), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        border: Border.all(
                            color: Color(tierColor(valranks[2].ranking)))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.h, bottom: 7.h),
                          height: 50.h,
                          width: 50.w,
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 50.h,
                          ),
                        ),
                        Text(
                          valranks[2].userName,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: CommonColor.red,
                            fontFamily: "Roboto",
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          valranks[2].name,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey.withOpacity(0.8),
                            fontFamily: "Roboto",
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Container(
                          width: 80.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 0.2.w),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.r)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            valranks[2].ranking,
                            style: TextStyle(fontSize: 11.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 22.w, bottom: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Rank",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Roboto",
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Container(
              width: double.infinity,
              height: 38.h,
              decoration: BoxDecoration(
                  color: CommonColor.red,
                  borderRadius: BorderRadius.all(Radius.circular(7.r))),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 37.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Rank",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                    Text(
                      "User",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontFamily: "Roboto",
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    Text(
                      "Tier/Exp",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: makeRankList(context, valranks),
          )
        ],
      ),
    );
  }
}

List<Widget> makeRankList(BuildContext context, List<ValRank> ranks) {
  List<Widget> results = [];
  int tierColor(String tier) {
    if (tier == "Unrated") {
      return 0xff000000;
    } else if (tier.contains("Iron")) {
      return 0xFFABABAB;
    } else if (tier.contains("Bronze")) {
      return 0xFFD07C16;
    } else if (tier.contains("Silver")) {
      return 0xffc0c0c0;
    } else if (tier.contains("Gold")) {
      return 0xffffd700;
    } else if (tier.contains("Platinum")) {
      return 0xff00bfff;
    } else if (tier.contains("Diamond")) {
      return 0xff00ffff;
    } else if (tier.contains("Ascendant")) {
      return 0xFF63F9B3;
    } else if (tier.contains("Immortal")) {
      return 0xFFFF5C5C;
    } else if (tier.contains("Radiant")) {
      return 0xFFE6A02F;
    }

    return 0xff000000;

    return 0xff000000;
  }

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
              color: Color(tierColor(ranks[i].ranking)).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3.h), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Row(
                children: [
                  SizedBox(
                      width: 70.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${i + 1}",
                            style: TextStyle(
                                color: CommonColor.red,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 50.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: SizedBox(
                      width: 108.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: Text(
                              ranks[i].userName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            ranks[i].name,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 90.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2.w),
                          borderRadius: BorderRadius.all(Radius.circular(30.r)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          ranks[i].ranking,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
  return results;
}
