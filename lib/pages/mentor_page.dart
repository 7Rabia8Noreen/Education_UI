import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/mentor_list.dart';

class MentorPage extends StatelessWidget {
  const MentorPage({Key? key}) : super(key: key);

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
            'Mentor',
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
            itemCount: mentorList.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(14.r),
              ),
              child: Container(
                height: 94.h,
                width: double.infinity,
                color: Colors.white,
                padding: REdgeInsets.all(14),
                margin: REdgeInsets.only(bottom: 14.h),
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
                    '${mentorList[index].title}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF28292C),
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        '${mentorList[index].title}',
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
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFC817),
                          ),
                          Text(
                            '4.9 Reviews',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFC2C2C2),
                              fontFamily: 'SF Pro Text',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Color(0xFFC2C2C2),
                  ),
                  contentPadding: REdgeInsets.all(0),
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
