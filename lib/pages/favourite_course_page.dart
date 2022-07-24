import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/favourite_course_list.dart';

class FavouriteCoursePage extends StatefulWidget {
  FavouriteCoursePage({Key? key}) : super(key: key);

  @override
  State<FavouriteCoursePage> createState() => _FavouriteCoursePageState();
}

class _FavouriteCoursePageState extends State<FavouriteCoursePage> {
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
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xFF28292C),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Favourite Course',
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
            child: const Icon(
              Icons.more_vert,
              color: Color(0xFF28292C),
            ),
          ),
        ],
      ),
      body: RPadding(
        padding: REdgeInsets.symmetric(horizontal: 14.w),
        child: SizedBox(
          height: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
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
                margin: REdgeInsets.only(bottom: 14.h),
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
                              // '${favouriteCourseList[index].status}',
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
