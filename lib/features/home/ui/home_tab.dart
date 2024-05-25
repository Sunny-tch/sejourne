import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../get_controllers/home_tab_get_controller.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  HomeTabGetController getController = Get.put(HomeTabGetController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        //801E5B and F0048D
                        Color(0xff801E5B),
                        Color(0xffF0048D),
                      ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/location.png",
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Location",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_history,
                                          color: Colors.white, size: 18.dp),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Text("Dubai Marina, Dubai",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp)),
                                      Icon(Icons.keyboard_arrow_down,
                                          color: Colors.white, size: 18.dp)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/location1.png",
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Image.asset(
                              "assets/images/notification.png",
                              height: 5.h,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        color: Color(0xFFB9B9B9)),
                                    prefixIcon: Icon(Icons.search,
                                        color: Color(0xFF861D5E)),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            10))),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(2.5.h),
                                child: Image.asset("assets/images/filter.png"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text("Special For You",
                      style: TextStyle(
                          color: Color(0xFF767676),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("See All",
                      style: TextStyle(
                        color: Color(0xFF861D5E),
                        fontSize: 12.sp,
                      ))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CarouselSlider(
                  carouselController: getController.carouselController,
                  items: [
                    Card(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/carousel1.png",
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff000000).withOpacity(0.8),
                                      Color(0xff000000).withOpacity(0.5),
                                      Color(0xff000000).withOpacity(0.0),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text("Limited Time",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold)),
                                  color: MaterialStatePropertyAll<Color>(
                                      Color(0xFF00B907)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text("Get Special Offer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.dp,
                                    )),
                                RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "Up to"),
                                          TextSpan(
                                              text: " 50% off ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.dp)),
                                          TextSpan(text: "On Services"),
                                        ],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.dp,
                                        ))),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'All Services Available | T&C Applied',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                    Spacer(),
                                    Chip(
                                      label: Text("Claim Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold)),
                                      backgroundColor: Color(0xFF861D5E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/carousel1.png",
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff000000).withOpacity(0.8),
                                      Color(0xff000000).withOpacity(0.5),
                                      Color(0xff000000).withOpacity(0.0),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text("Limited Time",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold)),
                                  color: MaterialStatePropertyAll<Color>(
                                      Color(0xFF00B907)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text("Get Special Offer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.dp,
                                    )),
                                RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "Up to"),
                                          TextSpan(
                                              text: " 50% off ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.dp)),
                                          TextSpan(text: "On Services"),
                                        ],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.dp,
                                        ))),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'All Services Available | T&C Applied',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                    Spacer(),
                                    Chip(
                                      label: Text("Claim Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold)),
                                      backgroundColor: Color(0xFF861D5E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/carousel1.png",
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff000000).withOpacity(0.8),
                                      Color(0xff000000).withOpacity(0.5),
                                      Color(0xff000000).withOpacity(0.0),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text("Limited Time",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold)),
                                  color: MaterialStatePropertyAll<Color>(
                                      Color(0xFF00B907)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text("Get Special Offer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.dp,
                                    )),
                                RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "Up to"),
                                          TextSpan(
                                              text: " 50% off ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.dp)),
                                          TextSpan(text: "On Services"),
                                        ],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.dp,
                                        ))),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'All Services Available | T&C Applied',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                    Spacer(),
                                    Chip(
                                      label: Text("Claim Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold)),
                                      backgroundColor: Color(0xFF861D5E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      viewportFraction: 0.9,
                      onPageChanged: (index, reason) {
                        getController.changeTabIndex(index);
                      })),
              Obx(() {
                return DotsIndicator(
                    dotsCount: 3,
                    position: getController.tabIndex.value,
                    decorator: DotsDecorator(
                        color: Color(0xFFEF048C),
                        activeColor: Color(0xFF881C5E)));
              }),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text("Location",
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("See All",
                      style: TextStyle(
                        color: Color(0xFF861D5E),
                        fontSize: 12.sp,
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(15, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/show.png",
                                  height: 15.h,
                                  width: 15.h,
                                )),
                            Text(
                              'Places Names',
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12.dp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      );
                    })
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text("Properties",
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              ...List.generate(5, (index) {
                return Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/show.png',
                            width: 25.w,
                            height: 16.h,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 2.h,
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.all(2.w),
                          child: Column(
                            children: [
                              Text(
                                'Stunning Studio Apartments In Dubai Arch (JLT)',
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 3.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(Icons.money_outlined, size: 4.w),
                                        Text('/night'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            size: 4.w),
                                        Text('JLT DUBAI'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 2.w),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(Icons.bed, size: 4.w),
                                        SizedBox(width: 1.w),
                                        Text('Beds'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(Icons.bathtub_outlined, size: 4.w),
                                        SizedBox(width: 1.w),
                                        Text('1 Bath'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1.w),
                              Row(
                                children: [
                                  Image.asset('assets/images/icon2.png',
                                      height: 2.5.h),
                                  SizedBox(width: 1.w),
                                  Image.asset('assets/images/icon2.png',
                                      height: 2.5.h),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              })
            ],
          )),
    );
  }
}
