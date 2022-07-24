import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/favourite_course_list.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({Key? key}) : super(key: key);

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
            'Course details',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(14.r),
                ),
                child: Container(
                  width: double.infinity,
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
                                favouriteCourseList[3].title,
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
                            '\$${favouriteCourseList[3].price}',
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
                                '${favouriteCourseList[3].reviews} Reviews',
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
                                '${favouriteCourseList[3].participants} Participants',
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
              SizedBox(
                height: 30.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(14.r),
                ),
                child: Container(
                  height: 94.h,
                  width: double.infinity,
                  color: Colors.white,
                  padding: REdgeInsets.all(14),
                  child: ListTile(
                    leading: RPadding(
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
                    title: Text(
                      'Ingredia Nutrisha',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF28292C),
                        fontFamily: 'SF Pro Text',
                      ),
                    ),
                    subtitle: Text(
                      'Finance Teacher',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF999BA4),
                        fontFamily: 'SF Pro Text',
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Color(0xFFC2C2C2),
                    ),
                    contentPadding: REdgeInsets.all(0),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Definition',
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
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(14.r),
                ),
                child: Container(
                  height: 88.h,
                  width: double.infinity,
                  color: Colors.white,
                  padding: REdgeInsets.all(14),
                  child: Text(
                    'Proin lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor, lobortis.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF999BA4),
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(7.r),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50.h,
                  color: Color(0xFFF2F2F2),
                  padding: REdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                        child: Container(
                          width: 185.w,
                          height: 38.h,
                          color: Colors.white,
                          padding: REdgeInsets.symmetric(
                              horizontal: 70.w, vertical: 12.h),
                          child: Text(
                            'Materi',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF5B73D0),
                              fontFamily: 'SF Pro Text',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Reviews (453)',
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
              ),
              SizedBox(
                height: 30.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(14.r),
                ),
                child: Container(
                  width: double.infinity,
                  height: 58.h,
                  color: Color(0xFFFFFFFF),
                  padding: REdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/vedio.svg'),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '01. Introduction',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF999BA4),
                              fontFamily: 'SF Pro Text',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '3.32 Minutes',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF28292C),
                          fontFamily: 'SF Pro Text',
                        ),
                      ),
                    ],
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
