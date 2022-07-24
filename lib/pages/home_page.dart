import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/category_list.dart';
import '../models/favourite_course_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide:
          BorderSide(color: Color(0xFFEAEBEC).withOpacity(0.0), width: 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: RPadding(
            padding: REdgeInsets.only(left: 14.w),
            child: Icon(
              Icons.menu,
              color: Color(0xFF28292C),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF28292C),
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        actions: [
          RPadding(
            padding: REdgeInsets.only(right: 14.w),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(100.r),
              ),
              child: Container(
                width: 50.w,
                height: 50.h,
                child: Image.asset(
                  'assets/images/image.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      body: RPadding(
        padding: REdgeInsets.symmetric(horizontal: 14.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF28292C),
                  fontFamily: 'SF Pro Text',
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Benjamin Evalent',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF999BA4),
                  fontFamily: 'SF Pro Text',
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Color(0xFFC2C2C2),
                  ),
                  hintText: 'Search',
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  enabledBorder: outlineInputBorder,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC2C2C2),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF28292C),
                  fontFamily: 'SF Pro Text',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 68.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.r),
                    ),
                    child: Container(
                      height: 68.h,
                      width: 164.w,
                      color: Colors.white,
                      padding: REdgeInsets.all(14),
                      margin: REdgeInsets.only(left: 14.w),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.r),
                            ),
                            child: Container(
                                height: 40.h,
                                width: 40.w,
                                color: Color(0xFFF6F8FF),
                                padding: REdgeInsets.symmetric(
                                    horizontal: 13.w, vertical: 8.h),
                                child: categoryList[index].icon),
                          ),
                          RPadding(
                            padding: REdgeInsets.only(left: 14.w),
                            child: Column(
                              children: [
                                Text(
                                  categoryList[index].title,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF28292C),
                                    fontFamily: 'SF Pro Text',
                                  ),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Text(
                                  '${categoryList[index].classes} Classes',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF999BA4),
                                    fontFamily: 'SF Pro Text',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite Course',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF28292C),
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF28292C),
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 320.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: favouriteCourseList.length,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.r),
                    ),
                    child: Container(
                      width: 324.w,
                      height: 320.h,
                      color: Colors.white,
                      padding: REdgeInsets.all(14),
                      //margin: REdgeInsets.all(14),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 208.h,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/image.jpg',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    height: 208.h,
                                  ),
                                  Positioned(
                                    top: 164.h,
                                    right: 14,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(19.r),
                                      ),
                                      child: Container(
                                        width: 97.w,
                                        height: 30.h,
                                        color: Color(0xFFFF9008),
                                        padding: REdgeInsets.all(8),
                                        child: Center(
                                          child: Text(
                                            'Experienced',
                                            // '${favouriteCourseList[index].status}',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontFamily: 'SF Pro Text',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Design',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF999BA4),
                                      fontFamily: 'SF Pro Text',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    favouriteCourseList[index].title,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF28292C),
                                      fontFamily: 'SF Pro Text',
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '\$${favouriteCourseList[index].price}',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF5B73D0),
                                  fontFamily: 'SF Pro Text',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFFFFC817),
                                  ),
                                  Text(
                                    '${favouriteCourseList[index].reviews} Reviews',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFC2C2C2),
                                      fontFamily: 'SF Pro Text',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.person_outline_outlined,
                                    color: Color(0xFFFF9008),
                                  ),
                                  Text(
                                    '${favouriteCourseList[index].participants} Participants',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFC2C2C2),
                                      fontFamily: 'SF Pro Text',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF5B73D0),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_outlined,
              color: Color(0xFFC2C2C2),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: Color(0xFFC2C2C2),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Color(0xFFC2C2C2),
            ),
            label: '',
          ),
        ],
        //  currentIndex: 0,
        selectedItemColor: Color(0xFF5B73D0),
        onTap: (_) {},
      ),
    );
  }
}
