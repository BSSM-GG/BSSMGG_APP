import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailChampion extends StatefulWidget {
  const DetailChampion({super.key});

  @override
  State<DetailChampion> createState() => _DetailChampionState();
}

class _DetailChampionState extends State<DetailChampion> {
  bool firstloon = true;
  bool secondloon = false;

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
                  SizedBox(
                    width: double.infinity,
                    height: 260.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.r),
                        bottomRight: Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/jin.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                    child: Opacity(
                      opacity: 0.3,
                      child: Container(
                        color: const Color(0xFF000000),
                      ),
                    ),
                  )),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 85.h,
                            ),
                            Text(
                              "진",
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "J   H   I   N",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 40.h, left: 70.w, right: 70.w, bottom: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill2.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill3.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill4.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill5.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "상대하기 ",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "쉬운 ",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: const Color(0xff6248FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "챔피언",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff6248FF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff6248FF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff6248FF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff6248FF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff6248FF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "카운터 ",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: const Color(0xffFF8A00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "챔피언",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "25.2%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xffFF8A00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "25.2%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xffFF8A00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "25.2%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xffFF8A00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "25.2%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xffFF8A00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 12.h, left: 9.w, right: 9.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "야스오",
                              style: TextStyle(
                                  fontSize: 9.sp, color: Colors.black),
                            ),
                            Text(
                              "25.2%",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xffFF8A00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
                child: Text(
                  "룬 세팅",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.w,
                  right: 18.w,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      firstloon = true;
                      secondloon = false;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: firstloon
                          ? const Color(0xff373737).withOpacity(0.13)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              Offset(0.w, 3.h), // changes position of shadow
                        ),
                      ],
                      borderRadius:
                          BorderRadius.all(Radius.circular(13.r) // POINT
                              ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 25.w),
                          child: SizedBox(
                              height: 50.h,
                              width: 75.w,
                              child: Image.asset(
                                "images/loon1.png",
                                fit: BoxFit.fill,
                              )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "정밀 + 마법",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "픽률 54.87%",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "승률 57.32%",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 10.h),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      firstloon = false;
                      secondloon = true;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: secondloon
                          ? const Color(0xff373737).withOpacity(0.13)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              Offset(0.w, 3.h), // changes position of shadow
                        ),
                      ],
                      borderRadius:
                          BorderRadius.all(Radius.circular(13.r) // POINT
                              ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 25.w),
                          child: SizedBox(
                              height: 50.h,
                              width: 75.w,
                              child: Image.asset(
                                "images/loon2.png",
                                fit: BoxFit.fill,
                              )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "지배 + 정밀",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "픽률 28.42%",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "승률 54.59%",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Stack(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 700),
                    opacity: firstloon ? 1.0 : 0.0,
                    child: Container(
                      width: 342.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "정밀 + 마법",
                            style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 700),
                    opacity: secondloon ? 1.0 : 0.0,
                    child: Container(
                      width: 342.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset:
                                Offset(0.w, 3.h), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.r) // POINT
                                ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "지배 + 정밀",
                            style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              )
            ],
          )),
        ));
  }
}
