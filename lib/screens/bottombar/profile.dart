import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/provider/emphaisis.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var emphasis = Provider.of<Emphaisis>(context);
    return Scaffold(
        appBar: null,
        body: SafeArea(
            child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          color:
              emphasis.ispressed ? Colors.black.withOpacity(0.9) : Colors.white,
          width: double.infinity,
          height: double.infinity.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 26.h,
              ),
              Icon(
                Icons.account_circle,
                color: const Color(0xffD9D9D9),
                size: 97.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 80.h),
                child: Stack(
                  children: [
                    AnimatedOpacity(
                      opacity: emphasis.ispressed ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 350),
                      child: Text(
                        "조용제님",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: emphasis.ispressed ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 350),
                      child: Text(
                        "조용제님",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  AnimatedOpacity(
                    opacity: emphasis.ispressed ? 0.0 : 1.0,
                    duration: const Duration(milliseconds: 350),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context, MaterialPageRoute(builder: (_) => const Login()));
                      },
                      child: const Text("로그아웃"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: emphasis.ispressed ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 350),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context, MaterialPageRoute(builder: (_) => const Login()));
                      },
                      child: const Text(
                        "로그아웃",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
