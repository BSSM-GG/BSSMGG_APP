import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/widget/solely.dart';

class DetailUser extends StatefulWidget {
  const DetailUser({super.key});

  @override
  State<DetailUser> createState() => _DetailUserState();
}

class _DetailUserState extends State<DetailUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/jin.jpg"),
                            fit: BoxFit.fill)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2.2, sigmaY: 2.2),
                      child: Container(color: Colors.black.withOpacity(0.1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 259.h),
                    child: Container(
                      height: 1.2.h,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.h, left: 8.w),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 22.h,
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                    top: 181.h,
                    left: 19.w,
                    child: SizedBox(
                      height: 54.h,
                      width: 54.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/userexample.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 230.h,
                      left: 36.w,
                      child: Container(
                        width: 20.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFF8A00),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "314",
                              style: TextStyle(
                                  fontSize: 7.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 194.h,
                      left: 83.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Samsung시리",
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "래더 랭킹 -",
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffAEAEAE)),
                          ),
                        ],
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.h, left: 18.w, right: 18.w, bottom: 15.h),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: const Color(0xffFFB35A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      //로딩페이지
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "전적 갱신 ",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.autorenew,
                          color: Colors.white,
                          size: 20.h,
                        )
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Row(
                    children: [
                      Container(
                        width: 120.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(
                                  1.w, 2.h), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "S2022 ",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "GRANDMASTER 1",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 100.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(
                                    1.w, 2.h), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "S2021 ",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "DIAMOND 3",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 90.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(
                                    1.w, 2.h), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "S2020 ",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "BRONZE 3",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 168.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(1.w, 2.h), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(
                              "images/grandmaster.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.5.h, bottom: 10.5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFB35A),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "개인/2인 랭크",
                                        style: TextStyle(
                                            fontSize: 7.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Grandmaster 1",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff292929)),
                                ),
                                Text(
                                  "382 LP",
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Color(0xff939393),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "60승 47패 (56%)",
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Color(0xff939393),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 168.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(1.w, 2.h), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(
                              "images/grandmaster.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.5.h, bottom: 10.5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFB35A),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "자유 랭크",
                                        style: TextStyle(
                                            fontSize: 7.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Grandmaster 1",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff292929)),
                                ),
                                Text(
                                  "382 LP",
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Color(0xff939393),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "60승 47패 (56%)",
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Color(0xff939393),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              const SolelyList()
            ],
          )),
        ));
  }
}

//글자수에 따라 container 교체
class SeasonTear {
  static Widget seasonContainer(int season, String tier) {
    return Container();
  }
}
