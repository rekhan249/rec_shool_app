import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventTitle extends StatefulWidget {
  static const String routeName = '/event-title';

  const EventTitle({super.key});

  @override
  State<EventTitle> createState() => _EventTitleState();
}

class _EventTitleState extends State<EventTitle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 25, 74, 159),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
          title: ListTile(
            title: Text(
              'Events Title',
              style: TextStyle(color: Colors.white, fontSize: 18.sp),
            ),
            subtitle: Text(
              'Date: DD-MMM-YYS',
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            ),
          ),
          actions: [
            Container(
                width: 70.w,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Image.asset('assets/images/feclogos.png'))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other. For example, you can add a matching cover page, header, and sidebar. Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated. When you click Design and choose , the pictures, charts, and SmartArt graphics change to match your new theme. When you apply styles, your headings change to match the new theme. Save time in Word with new buttons that show up where you need them. To change the way a picture fits in your document, click it and a button for layout options appears next to it. When you work on a table, click where you want to add a row or a column, and then click the plus sign. Reading is easier, too, in the new Reading view. You can collapse parts of the document and focus on the text you want. If you need to stop reading before you reach the end, Word remembers where you left off - even on another device. ",
                      style: TextStyle(fontSize: 14.sp)),
                ))
          ],
        )),
      ),
    );
  }
}
