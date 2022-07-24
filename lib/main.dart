import 'package:education_ui/pages/course_details_page.dart';
import 'package:education_ui/pages/detail_mentor.dart';
import 'package:education_ui/pages/favourite_course_page.dart';
import 'package:education_ui/pages/home_page.dart';
import 'package:education_ui/pages/mentor_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: HomePage()
        // home: FavouriteCoursePage(),
        // home: CourseDetailsPage(),
        home: MentorPage(),
        // home: DetailMentor(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
