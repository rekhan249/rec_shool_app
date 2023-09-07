import 'package:fec_app/providers/password_provider.dart';
import 'package:fec_app/widgets/curved_botton.dart';
import 'package:fec_app/widgets/email_field.dart';
import 'package:fec_app/widgets/name_field.dart';
import 'package:fec_app/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileInfo extends StatefulWidget {
  static const String routeName = '/profile-info';
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final passwordProvider =
        Provider.of<PasswordProvider>(context, listen: false);
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
                            'assets/images/other.jpg',
                            fit: BoxFit.cover,
                            alignment: const FractionalOffset(1, 0),
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
              'Profile',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color.fromARGB(255, 25, 74, 159),
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Name:',
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
                'Email:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: EmailField(
                    emailController: _emailController,
                    hintText: 'Enter email address here',
                    labelText: 'Email Address')),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Password:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Consumer<PasswordProvider>(
                  builder: ((context, pp, child) => PasswordField(
                        passwordController: _passwordController,
                        passwordProvider: passwordProvider,
                        hintText: 'Enter password',
                        labelText: 'Password',
                      ))),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Text(
                'Confirm password:',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 05.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Consumer<PasswordProvider>(
                  builder: ((context, pp, child) => PasswordField(
                        passwordController: _confirmPasswordController,
                        passwordProvider: passwordProvider,
                        hintText: 'Enter confirm password',
                        labelText: 'Confirm password',
                      ))),
            ),
            SizedBox(height: 40.h),
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
                      child: Text('Update',
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
