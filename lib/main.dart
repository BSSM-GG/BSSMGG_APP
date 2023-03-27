import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/provider/emphaisis.dart';
import 'package:plz_set_ward_app/screens/bottombar/champion.dart';
import 'package:plz_set_ward_app/screens/bottombar/combination.dart';
import 'package:plz_set_ward_app/screens/bottombar/community.dart';
import 'package:plz_set_ward_app/screens/bottombar/profile.dart';
import 'package:plz_set_ward_app/screens/bottombar/search.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:provider/provider.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Emphaisis>(
          create: (_) => Emphaisis(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(378, 844),
        builder: (BuildContext context, Widget? child) => const MaterialApp(
            title: '와드좀 박아라',
            debugShowCheckedModeBanner: false,
            home: MyPage()),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();
  late AnimationController _animationController;
  late Animation<Color?> _animation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = ColorTween(
      begin: Colors.white,
      end: Colors.black.withOpacity(0.9),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (!_isPressed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }

    _isPressed = !_isPressed;
  }

  @override
  Widget build(BuildContext context) {
    var emphasis = Provider.of<Emphaisis>(context);
    return DefaultTabController(
        //바텀바 코드
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          bottomNavigationBar: StylishBottomBar(
            option: AnimatedBarOptions(
              iconSize: 23.w,
              barAnimation: BarAnimation.fade,
              iconStyle: IconStyle.Default,
              opacity: 0.3,
            ),
            items: [
              BottomBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.search,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '검색',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              BottomBarItem(
                  icon: Icon(
                    Icons.supervised_user_circle,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.supervised_user_circle,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '랭킹',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              BottomBarItem(
                  icon: Icon(
                    Icons.people,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.people,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '팀빌더',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              BottomBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.account_circle,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '프로필',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
            ],
            hasNotch: true,
            backgroundColor: _animation.value,
            currentIndex: selected ?? 0,
            onTap: (index) {
              controller.jumpToPage(index);
              setState(() {
                selected = index;
              });
            },
          ),
          body: Stack(
            children: [
              SafeArea(
                child: PageView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: ((value) {
                    if (value == 0) {
                      setState(() {
                        selected = 0;
                      });
                    } else if (value == 1) {
                      setState(() {
                        selected = 1;
                      });
                    } else if (value == 2) {
                      setState(() {
                        selected = 2;
                      });
                    }
                  }),
                  children: [Search(isPressed: emphasis.ispressed), Champion(), MyHomePage(), Profile()],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 295.w, top: 620.h),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            emphasis.change();
                            _onButtonPressed();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          elevation: 6.0,
                          minimumSize: Size(55.w, 55.h),
                          backgroundColor: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 350),
                                  opacity: emphasis.ispressed ? 0.0 : 1.0,
                                  child: Container(
                                      height: 25.h,
                                      width: 25.w,
                                      child: Image.asset(
                                        "images/lol.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 350),
                                  opacity: emphasis.ispressed ? 1.0 : 0.0,
                                  child: Container(
                                      height: 25.h,
                                      width: 25.w,
                                      child: Image.asset(
                                        "images/val.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
