import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/screens/detail_user.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int i = 0;
  final TextEditingController _searchController = TextEditingController();

  final CarouselController _controller = CarouselController();
  final List<Widget> carouselList = [
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        width: 200.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0.w, 3.h), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(13.r) // POINT
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 15.w),
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "54.3%",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                Text(
                  "1.52.1",
                  style: TextStyle(fontSize: 11.sp, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: null,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 91.h, bottom: 56.h),
                child: Text(
                  "WITH.GG",
                  style: TextStyle(
                      fontSize: 36.sp,
                      color: const Color(0xffFFB35A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 39.w, right: 39.w),
                child: TextField(
                  controller: _searchController,
                  textAlignVertical: TextAlignVertical.center,
                  onEditingComplete: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const DetailUser()));
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                        width: 0.w,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xffAEAEAE), fontSize: 15.sp),
                    hintText: "챔피언, 소환사명 검색",
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 23.h,
                      color: const Color(0xffAEAEAE),
                    ),
                    fillColor: const Color(0xffF2F2F2),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, top: 22.h),
                child: Row(
                  children: [
                    Text(
                      "OP 챔피언",
                      style: TextStyle(
                          fontSize: 19.sp,
                          color: const Color(0xffFFB35A),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120.h,
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: 80.h,
                      viewportFraction: 0.57,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          i = index;
                        });
                      })),
                  items: carouselList,
                ),
              ),
              AnimatedSmoothIndicator(
                activeIndex: i,
                count: carouselList.length,
                effect: WormEffect(
                    dotHeight: 7.h,
                    dotWidth: 7.w,
                    dotColor: const Color(0xffD9D9D9),
                    activeDotColor: const Color(0xffFFA030)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 18.w, right: 18.w, bottom: 22.h, top: 20.h),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: const Color(0xffFFB35A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      if (_searchController.text == '') {
                        //toast 기능 추가
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "챔피언 상세보기",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 17.h,
                        )
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, bottom: 22.h),
                child: Row(
                  children: [
                    Text(
                      "OP 조합",
                      style: TextStyle(
                          fontSize: 19.sp,
                          color: const Color(0xffFFB35A),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.w,
                  right: 18.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 58.w,
                      height: 170.h,
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
                            top: 20.h, bottom: 20.h, left: 9.w, right: 9.w),
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
                              "56.4%",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xffFF5656)),
                            ),
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 170.h,
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
                            top: 20.h, bottom: 20.h, left: 9.w, right: 9.w),
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
                              "54.5%",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xffFF5656)),
                            ),
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 170.h,
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
                            top: 20.h, bottom: 20.h, left: 9.w, right: 9.w),
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
                              "58.7%",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xffFF5656)),
                            ),
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 170.h,
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
                            top: 20.h, bottom: 20.h, left: 9.w, right: 9.w),
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
                              "55.5%",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xffFF5656)),
                            ),
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 58.w,
                      height: 170.h,
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
                            top: 20.h, bottom: 20.h, left: 9.w, right: 9.w),
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
                              "87.5%",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xffFF5656)),
                            ),
                            Container(
                              width: 39.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
