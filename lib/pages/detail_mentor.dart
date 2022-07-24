import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailMentor extends StatelessWidget {
  const DetailMentor({Key? key}) : super(key: key);

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
            'Detail Mentor',
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
      body: SingleChildScrollView(
        child: RPadding(
          padding: REdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
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
                      'Valentino Morose',
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
                          'Dance Teacher',
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
              SizedBox(
                height: 30.h,
              ),
              Text(
                'About',
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
                    'Dance teacher lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor.',
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
                            'Experience',
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
                  height: 280.h,
                  color: Colors.white,
                  padding: REdgeInsets.all(14),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          ListTile(
                            contentPadding: REdgeInsets.all(0),
                            leading: SvgPicture.asset('assets/svg/oval.svg'),
                            title: Text(
                              'Eastern Dance Champion',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF28292C),
                                fontFamily: 'SF Pro Text',
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: REdgeInsets.all(0),
                            leading: SvgPicture.asset('assets/svg/oval.svg'),
                            title: Text(
                              'Florida Dance Champion',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF28292C),
                                fontFamily: 'SF Pro Text',
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: REdgeInsets.all(0),
                            leading: SvgPicture.asset('assets/svg/oval.svg'),
                            title: Text(
                              'Alabama Dance Champion',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF28292C),
                                fontFamily: 'SF Pro Text',
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: REdgeInsets.all(0),
                            leading: SvgPicture.asset('assets/svg/oval.svg'),
                            title: Text(
                              'Paris Dance Champion',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF28292C),
                                fontFamily: 'SF Pro Text',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 10.w,
                        top: 35.h,
                        child: SvgPicture.asset(
                          'assets/svg/vertical_line.svg',
                          //  height: 400.h,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    //maximumSize: Size(double.infinity, 0.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 17.h),
                    primary: const Color(0xFF5B73D0),
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  onFocusChange: (_) {},
                  onHover: (_) {},
                  onLongPress: () {},
                  child: Text('Leave a review'),
                ),
              ),
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
