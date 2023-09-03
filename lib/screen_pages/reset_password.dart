import 'package:fec_app/widgets/email_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/mainpage.png',
                  )),
                  Padding(
                    padding: EdgeInsets.only(top: 280.h),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                      elevation: 20,
                      child: Column(
                        children: [
                          SizedBox(height: 150.h),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: EmailField(
                              emailController: _emailController,
                              hintText: 'Enter email here',
                              labelText: 'Email Address',
                            ),
                          ),
                          SizedBox(height: 50.h),
                          SizedBox(
                              height: 50.h,
                              width: double.infinity.w,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    255, 25, 74, 159))),
                                    child: Text('Reset Password',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                              )),
                          SizedBox(height: 50.h),

                          // Padding(
                          //   padding: const EdgeInsets.all(15),
                          //   child: Align(
                          //     alignment: Alignment.center,
                          //     child: RichText(
                          //       text: TextSpan(
                          //         children: [
                          //           TextSpan(
                          //             text: 'Allready have an account!',
                          //             style: TextStyle(
                          //               color: Colors.black,
                          //               fontWeight: FontWeight.bold,
                          //               fontSize: 16.sp,
                          //             ),
                          //           ),
                          //           TextSpan(
                          //               text: 'Login',
                          //               style: TextStyle(
                          //                   color: Colors.red,
                          //                   fontWeight: FontWeight.bold,
                          //                   fontSize: 18.sp),
                          //               recognizer: TapGestureRecognizer()
                          //                 ..onTap = () => Navigator.push(
                          //                     context,
                          //                     MaterialPageRoute(
                          //                         builder: (context) =>
                          //                             const LoginScreen())))
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
