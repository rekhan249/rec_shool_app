import 'package:fec_app/screen_pages/events.dart';
import 'package:fec_app/screen_pages/forms.dart';
import 'package:fec_app/screen_pages/notices.dart';
import 'package:fec_app/widgets/curved_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatefulWidget {
  static const String routeName = '/dashboard';
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurvedBottomClipper2(),
                  child: Container(
                    color: Colors.amber,
                    height: 210.h,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: CurvedBottomClipper(),
                        child: Container(
                          color: Colors.amber,
                          height: 200.h,
                          width: 400.w,
                          child: Image.asset(
                            'assets/images/dashboard.png',
                            fit: BoxFit.cover,
                            alignment: const FractionalOffset(0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Center(
                child: Text(
              'DashBoard',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color.fromARGB(255, 25, 74, 159),
                  fontWeight: FontWeight.w700),
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: const Divider(color: Colors.black),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, NoticesScreen.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(05.r)),
                  child: ListTile(
                    leading: Container(
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 74, 159),
                          borderRadius: BorderRadius.circular(07.r)),
                      child: Image.asset('assets/images/notices.png'),
                    ),
                    title: const Text('Notices'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EventScreen.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(05.r)),
                  child: ListTile(
                    leading: Container(
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 74, 159),
                          borderRadius: BorderRadius.circular(07.r)),
                      child: Image.asset('assets/images/events.png'),
                    ),
                    title: const Text('Events'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, FormScreen.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(05.r)),
                  child: ListTile(
                    leading: Container(
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 74, 159),
                          borderRadius: BorderRadius.circular(07.r)),
                      child: Image.asset('assets/images/forms.png'),
                    ),
                    title: const Text('Forms'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

/*

 Positioned(
                          top: 60.h,
                          left: 130.w,
                          right: 130.w,
                          child: Text(
                            'username',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 80.h,
                          left: 80.w,
                          right: 70.w,
                          child: Text(
                            'Welcome to FEC',
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                     

*/