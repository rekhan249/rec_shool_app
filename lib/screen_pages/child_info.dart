import 'package:fec_app/widgets/class_grade.dart';
import 'package:fec_app/widgets/curved_botton.dart';
import 'package:fec_app/widgets/name_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildInformation extends StatefulWidget {
  static const String routeName = '/child-info';
  const ChildInformation({super.key});

  @override
  State<ChildInformation> createState() => _ChildInformationState();
}

class _ChildInformationState extends State<ChildInformation> {
  final _nameController = TextEditingController();
  final _parentNameController = TextEditingController();
  final _classController = TextEditingController();
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
                  clipper: CurvedBottomClipper5(),
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
                            'assets/images/other.jpg',
                            fit: BoxFit.cover,
                            alignment: const FractionalOffset(1.5, 0.5),
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
              'Children Info',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color.fromARGB(255, 25, 74, 159),
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Children Name:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: NameField(
                nameController: _nameController,
                hintText: 'Enter your full name',
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Parent Name:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: NameField(
                nameController: _parentNameController,
                hintText: 'Enter Your Parent Name',
                labelText: 'Parent Name',
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Class:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: ClassGrade(classController: _classController),
            ),
            SizedBox(height: 50.h),
            SizedBox(
                height: 50.h,
                width: double.infinity.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70.h),
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              const MaterialStatePropertyAll(LinearBorder.none),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 25, 74, 159))),
                      child: Text('Add',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                )),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    ));
  }
}
