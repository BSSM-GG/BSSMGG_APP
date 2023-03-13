import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/model/solely.dart';

class SolelyList extends StatefulWidget {
  const SolelyList({super.key});

  @override
  State<SolelyList> createState() => _SolelyListState();
}

class _SolelyListState extends State<SolelyList> {
  List<Solely> solelys = <Solely>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 15; i++){
      solelys.add(
          Solely(i % 2 == 0 ? true : false, 1, 10, 4, "loon", "10시간전", "점화", "점멸", "개인/2인 랭크", 14));
 
    }
       }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: makeSolelyList(context, solelys),
      ),
    );
  }
}

List<Widget> makeSolelyList(BuildContext context, List<Solely> solelys) {
  List<Widget> results = [];

  for (var i = 0; i < solelys.length; i++) {
   results.add(
    Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w, bottom: 10.h),
              child: Container(
                width: double.infinity,
                height: 88.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(1.w, 2.h), // changes position of shadow
                    ),
                  ],
                  color: solelys[i].isWin == true ? const Color(0xffD9DAFF) : const Color(0xffFFBFBF),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 22.h,
                                  width: 22.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  height: 22.h,
                                  width: 22.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${solelys[i].kill}/${solelys[i].death}/${solelys[i].assist}",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff292929)),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Text(
                                  "킬 관여 ${solelys[i].killInclude}%",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: const Color(0xff292929)),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              margin: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 105.w, top: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              solelys[i].gameType,
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: const Color(0xff292929),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            solelys[i].time,
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: const Color(0xff292929),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
   );
  }
  return results;
}
