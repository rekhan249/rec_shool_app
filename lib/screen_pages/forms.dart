import 'package:fec_app/screen_pages/dashboard.dart';
import 'package:fec_app/screen_pages/form_title.dart';
import 'package:fec_app/widgets/curved_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormScreen extends StatefulWidget {
  static const String routeName = '/forms';
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: CurvedBottomClipper4(),
                    child: Container(
                      color: Colors.amber,
                      height: 140.h,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: CurvedBottomClipper3(),
                          child: Container(
                            color: Colors.amber,
                            height: 130.h,
                            width: 400.w,
                            child: Image.asset(
                              'assets/images/dashboard.png',
                              fit: BoxFit.cover,
                              alignment: const FractionalOffset(1, 1),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 40.h,
                            left: 130.w,
                            right: 130.w,
                            child: Text(
                              'Forms',
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 0.h,
                            left: 0.w,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, DashBoard.routeName);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, FormTitle.routeName);
                  },
                  child: Container(
                    height: 140.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forms Title',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          SizedBox(height: 05.h),
                          Text(
                              'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.',
                              style: TextStyle(fontSize: 12.sp)),
                          SizedBox(height: 15.h),
                          Text(
                            'Date: DD-MMM-YY',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, FormTitle.routeName);
                  },
                  child: Container(
                    height: 140.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forms Title',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          SizedBox(height: 05.h),
                          Text(
                              'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.',
                              style: TextStyle(fontSize: 12.sp)),
                          SizedBox(height: 15.h),
                          Text(
                            'Date: DD-MMM-YY',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, FormTitle.routeName);
                  },
                  child: Container(
                    height: 140.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forms Title',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          SizedBox(height: 05.h),
                          Text(
                              'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.',
                              style: TextStyle(fontSize: 12.sp)),
                          SizedBox(height: 15.h),
                          Text(
                            'Date: DD-MMM-YY',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
