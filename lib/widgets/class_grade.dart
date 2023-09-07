import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassGrade extends StatelessWidget {
  const ClassGrade({
    super.key,
    required TextEditingController classController,
  }) : _classController = classController;

  final TextEditingController _classController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _classController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your class grade',
        label: Text('Class grade',
            style: TextStyle(fontSize: 16.sp, color: Colors.black)),
        prefixIcon: const Icon(Icons.person, color: Colors.black),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(width: 3, color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(width: 3, color: Colors.grey)),
      ),
    );
  }
}


//  Positioned(
//                           top: 155.h,
//                           left: 20.w,
//                           child: Container(
//                             height: 35.h,
//                             width: 35.h,
//                             decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 07, color: Colors.amber),
//                               shape: BoxShape.circle,
//                               color: const Color.fromARGB(255, 25, 74, 159),
//                               // borderRadius: BorderRadius.circular(50.r),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Image.asset('assets/images/phone.png')),
//                             ),
//                           )),
//                       Positioned(
//                           top: 175.h,
//                           left: 80.w,
//                           child: Container(
//                             height: 35.h,
//                             width: 35.h,
//                             decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 07, color: Colors.amber),
//                               shape: BoxShape.circle,
//                               color: const Color.fromARGB(255, 25, 74, 159),
//                               // borderRadius: BorderRadius.circular(50.r),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Image.asset('assets/images/phone.png')),
//                             ),
//                           )),
//                       Positioned(
//                           top: 185.h,
//                           left: 150.w,
//                           child: Container(
//                             height: 35.h,
//                             width: 35.h,
//                             decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 07, color: Colors.amber),
//                               shape: BoxShape.circle,
//                               color: const Color.fromARGB(255, 25, 74, 159),
//                               // borderRadius: BorderRadius.circular(50.r),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Image.asset('assets/images/phone.png')),
//                             ),
//                           )),
//                       Positioned(
//                           top: 180.h,
//                           left: 230.w,
//                           child: Container(
//                             height: 35.h,
//                             width: 35.h,
//                             decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 07, color: Colors.amber),
//                               shape: BoxShape.circle,
//                               color: const Color.fromARGB(255, 25, 74, 159),
//                               // borderRadius: BorderRadius.circular(50.r),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Image.asset('assets/images/phone.png')),
//                             ),
//                           )),
//                       Positioned(
//                           top: 160.h,
//                           left: 300.w,
//                           child: Container(
//                             height: 35.h,
//                             width: 35.h,
//                             decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 07, color: Colors.amber),
//                               shape: BoxShape.circle,
//                               color: const Color.fromARGB(255, 25, 74, 159),
//                               // borderRadius: BorderRadius.circular(50.r),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Image.asset('assets/images/phone.png')),
//                             ),
//                           )),
