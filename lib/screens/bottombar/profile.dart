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
            children: [Text("프로필")],
          ),
        )));
  }
}
