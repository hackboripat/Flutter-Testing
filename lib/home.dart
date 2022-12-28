import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_testing/home_widget/widget_NewsAndActivities.dart';
import 'package:flutter_application_testing/home_widget/widget_buildImage.dart';
import 'package:flutter_application_testing/home_widget/widget_buildImages2.dart';
import 'package:flutter_application_testing/home_widget/widget_famousShop.dart';
import 'package:flutter_application_testing/home_widget/widget_iconmanu.dart';
import 'package:flutter_application_testing/home_widget/widget_mayBeInterested.dart';
import 'package:flutter_application_testing/home_widget/widget_top10.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_widget/widget_hotEvent.dart';
import 'home_widget/widget_select_by_location.dart';

class homewidget extends StatefulWidget {
  const homewidget({Key? key}) : super(key: key);

  @override
  State<homewidget> createState() => _homewidget();
}

class _homewidget extends State<homewidget> {
  // const homewidget({super.key});

  final urlImages = [
    'image/Frame_1.png',
    'image/Frame_1.png',
    'image/Frame_1.png',
  ];

  final urlImages2 = [
    'image/Frame_2.png',
    'image/Frame_2.png',
    'image/Frame_2.png',
  ];

  final locationTest = 'ทองหล่อ, กรุงเทพ...';

  final urlImages_location = [
    'image/location/Muse_Thonglor.png',
    'image/location/Funky_villa.png',
    'image/location/Escobar.png',
    'image/location/Kryptonite Bar.png',
    'image/location/Funky_villa.png',
    'image/location/Krungthep Rajasiam.png',
    'image/location/Muse_Thonglor.png',
    'image/location/Kryptonite Bar.png',
    'image/location/Escobar.png',
    'image/location/Funky_villa.png',
  ];

  final name_location = [
    'Muse - Thonglor มิวส์ ทองหล่อ....',
    'Funky villa',
    'Escobar',
    'Kryptonite Bar & Restaurant',
    'Funky villa',
    'กลางกรุง ราชาสยาม ',
    'Muse - Thonglor มิวส์ ทองหล่อ....',
    'Kryptonite Bar & Restaurant',
    'Escobar',
    'Funky villa',
  ];
  int index_image = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ************************************************************** widgets 1
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            // margin: EdgeInsets.all(1),
            width: 396,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xFF202427),
              borderRadius: BorderRadius.circular(15),
            ),
            // padding: EdgeInsets.all(0),
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: () {},
              // style: TextButton.styleFrom(maximumSize: const Size(400, 70)),
              child: Stack(
                children: [
                  Container(
                    child: Positioned(
                      left: 0,
                      bottom: 0,
                      top: 0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ไปวันไหนดี ?",
                                style: GoogleFonts.kanit(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text("24 สิงหาคม 2565",
                                  style: GoogleFonts.kanit(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Row(
                      children: [
                        Image.asset(
                          'image/arrow_right.png',
                          width: 24,
                        ),
                        const SizedBox(width: 10)
                      ],
                    ),
                  ),
                ],
              ),

              // IconButton(onPressed: onPressed, icon: icon),
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),
        // ************************************************************** widgets 2
        Center(
          child: CarouselSlider.builder(
            itemCount: urlImages.length,
            options: CarouselOptions(
                height: 210,
                autoPlay: true,
                initialPage: 0,
                animateToClosest: false,
                // pageSnapping: false,
                // reverse: true,
                // enableInfiniteScroll: false,
                viewportFraction: 1,
                autoPlayInterval: const Duration(
                  seconds: 10,
                )),
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];

              return buildImage(urlImage, index, urlImages.length);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset("image/Star 8.png"),
              const SizedBox(
                width: 10,
              ),
              Text("แบบไหน ที่ใช่คุณ ?",
                  style: GoogleFonts.kanit(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.all(20),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              widget_iconMemu("ดนตรีสด", "image/icon_music.png"),
              const SizedBox(width: 30),
              widget_iconMemu("สายEDM", "image/icon_sound.png"),
              const SizedBox(width: 30),
              widget_iconMemu("นั่งชิล", "image/icon_glass_of_water.png"),
              const SizedBox(width: 30),
              widget_iconMemu("สถานที่ปิดส่วนตัว", "image/icon_hand.png"),
              const SizedBox(width: 30),
              widget_iconMemu("พิ้นที่โล่งอากาศถ่านเท", "image/icon_wind.png"),
              const SizedBox(width: 30),
              widget_iconMemu("ไม่เน้นดื่ม", "image/icon_person.png"),
              const SizedBox(width: 30),
              widget_iconMemu("สายปาร์ตี้", "image/icon_party.png"),
              const SizedBox(width: 30),
              widget_iconMemu("ชมรมคนรักครอบครัว", "image/icon_heart.png"),
              const SizedBox(width: 30),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("image/Medal Star.png"),
              const SizedBox(width: 10),
              Text(
                "10",
                style: GoogleFonts.inter(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "อันดับร้านยอดฮิต",
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              widget_top10(name_location[0], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[0], 0, urlImages_location.length),
              widget_top10(name_location[1], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[1], 1, urlImages_location.length),
              widget_top10(name_location[2], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[2], 2, urlImages_location.length),
              widget_top10(name_location[3], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[3], 3, urlImages_location.length),
              widget_top10(name_location[4], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[4], 4, urlImages_location.length),
              widget_top10(name_location[5], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[5], 5, urlImages_location.length),
              widget_top10(name_location[6], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[6], 6, urlImages_location.length),
              widget_top10(name_location[7], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[7], 7, urlImages_location.length),
              widget_top10(name_location[8], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[8], 8, urlImages_location.length),
              widget_top10(name_location[9], "ทองหล่อ, กรุงเทพ...",
                  urlImages_location[9], 9, urlImages_location.length),
            ])),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("image/Map Point.png"),
                  const SizedBox(width: 10),
                  Text(
                    "เลือกตามสถานที่",
                    style: GoogleFonts.kanit(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    style:
                        IconButton.styleFrom(padding: const EdgeInsets.all(0)),
                    icon: Image.asset(
                      'image/arrow_right2.png',
                      width: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 20),
              widgetselectlocation(
                'image/select by location/Thonglor_selec.png',
                'ทองหล่อ',
                '8 ร้าน',
              ),
              const SizedBox(width: 20),
              widgetselectlocation(
                'image/select by location/Silom - Suriwongse_selec.png',
                'สีลม',
                '10 ร้าน',
              ),
              const SizedBox(width: 20),
              widgetselectlocation(
                'image/select by location/Asoke.png',
                'อโศก',
                '14 ร้าน',
              ),
              const SizedBox(width: 20),
              widgetselectlocation(
                'image/select by location/Sathorn_selec.png',
                'สาทร',
                '20 ร้าน',
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Row(
                children: [
                  Image.asset("image/Fire.png"),
                  const SizedBox(width: 10),
                  Text(
                    "Hot EVent",
                    style: GoogleFonts.kanit(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    style:
                        IconButton.styleFrom(padding: const EdgeInsets.all(0)),
                    icon: Image.asset(
                      'image/arrow_right2.png',
                      width: 30,
                    ),
                  )
                  // IconButton(onPressed: onPressed, icon: icon),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 20),
              //*********************************************************** 1 */
              widgethotEvent(
                'image/hotevent/hot-event1.png',
                'เตรียมพบกับ คอนเสิร์ตเดี่ยวนนท์ ธนนท์ รับรองความสนุก แ..',
                '3,500',
                '4,500',
                'เบบี้ชูก้า ซูเปอร์คลับ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 2 */
              widgethotEvent(
                'image/hotevent/hot-event2.png',
                'คอนเสิร์ต TATTOO COLOUR กาลครั้ง 4 Happy Birthday ...',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 3 */
              widgethotEvent(
                'image/hotevent/hot-event3.png',
                'พบกับ โอ๊ต ปราโมทย์  งานครบรอบ 3 ปีร้าน นัดพบ',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 4 */
              widgethotEvent(
                'image/hotevent/hot-event4.png',
                'DJ ROXY JUNE รับประกันความมันส์เหนือแสง!',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 5 */
              widgethotEvent(
                'image/hotevent/hot-event1.png',
                'เตรียมพบกับ คอนเสิร์ตเดี่ยวนนท์ ธนนท์ รับรองความสนุก แ..',
                '3,500',
                '4,500',
                'เบบี้ชูก้า ซูเปอร์คลับ',
                locationTest,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),

        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("image/Like.png"),
              const SizedBox(width: 10),
              Text(
                "ร้านดังใกล้ฉัน",
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              widget_FamousShop('image/famous Shop/famousShop1.png',
                  'ChaCha Pub & Restaur...', locationTest, '4.5', '2,000'),
              const SizedBox(width: 20),
              widget_FamousShop('image/famous Shop/famousShop2.png',
                  'กลางกรุง ราชาสยาม', locationTest, '4.5', '2,000'),
              const SizedBox(width: 20),
              widget_FamousShop('image/famous Shop/famousShop3.png',
                  'Kryptonite Bar & Rest...', locationTest, '4.5', '2,000'),
              const SizedBox(width: 20),
              widget_FamousShop('image/famous Shop/famousShop4.png',
                  'Yokoyawa Restaurant ', locationTest, '4.5', '2,000'),
              const SizedBox(width: 20),
            ],
          ),
        ),
        // const SizedBox(height: 5),
        // Center(
        //     child: AnimatedSmoothIndicator(
        //         effect: const ColorTransitionEffect(
        //           // dotColor: Color(0xFFFEB13B),
        //           activeDotColor: Color(0xFFFEB13B),
        //           dotHeight: 4,
        //           dotWidth: 4,
        //           spacing: 5,
        //         ),
        //         activeIndex: index_image,
        //         count: urlImages2.length)),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("image/Shop 2.png"),
              const SizedBox(width: 10),
              Text(
                "ร้านที่คุณอาจสนใจ",
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        widget_mayBeInterested(
            'image/MayBeInterested/MayBeInterested1.png',
            'image/MayBeInterested/store.png',
            '360 Pub & Restaurant',
            locationTest,
            '4.5',
            '2,000'),
        const SizedBox(height: 5),
        widget_mayBeInterested(
            'image/MayBeInterested/MayBeInterested2.png',
            'image/MayBeInterested/store.png',
            'ChaCha Pub & Restaurant',
            locationTest,
            '4.5',
            '2,000'),
        const SizedBox(height: 5),
        widget_mayBeInterested(
            'image/MayBeInterested/MayBeInterested3.png',
            'image/MayBeInterested/store.png',
            '360 Pub & Restaurant',
            locationTest,
            '4.5',
            '2,000'),
        const SizedBox(height: 5),
        widget_mayBeInterested(
            'image/MayBeInterested/MayBeInterested4.png',
            'image/MayBeInterested/store.png',
            '360 Pub & Restaurant',
            locationTest,
            '4.5',
            '2,000'),
        const SizedBox(height: 5),
        widget_mayBeInterested(
            'image/MayBeInterested/MayBeInterested5.png',
            'image/MayBeInterested/store.png',
            '360 Pub & Restaurant',
            locationTest,
            '4.5',
            '2,000'),
        const SizedBox(height: 10),

        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("image/Clock Circle.png"),
              const SizedBox(width: 10),
              Text(
                "ดูล่าสุด",
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 20),
              //*********************************************************** 1 */
              widgethotEvent(
                'image/hotevent/hot-event1.png',
                'เตรียมพบกับ คอนเสิร์ตเดี่ยวนนท์ ธนนท์ รับรองความสนุก แ..',
                '3,500',
                '4,500',
                'เบบี้ชูก้า ซูเปอร์คลับ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 2 */
              widgethotEvent(
                'image/hotevent/hot-event2.png',
                'คอนเสิร์ต TATTOO COLOUR กาลครั้ง 4 Happy Birthday ...',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 3 */
              widgethotEvent(
                'image/hotevent/hot-event3.png',
                'พบกับ โอ๊ต ปราโมทย์  งานครบรอบ 3 ปีร้าน นัดพบ',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 4 */
              widgethotEvent(
                'image/hotevent/hot-event4.png',
                'DJ ROXY JUNE รับประกันความมันส์เหนือแสง!',
                '3,500',
                '4,500',
                'นัดพบ ทองหล่อ',
                locationTest,
              ),
              const SizedBox(width: 20),

              //*********************************************************** 5 */
              widgethotEvent(
                'image/hotevent/hot-event1.png',
                'เตรียมพบกับ คอนเสิร์ตเดี่ยวนนท์ ธนนท์ รับรองความสนุก แ..',
                '3,500',
                '4,500',
                'เบบี้ชูก้า ซูเปอร์คลับ',
                locationTest,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        const SizedBox(height: 60),
        Center(
          child: CarouselSlider.builder(
            itemCount: urlImages2.length,
            options: CarouselOptions(
                height: 168,
                autoPlay: true,
                initialPage: 0,
                animateToClosest: false,
                // pageSnapping: false,
                // reverse: true,
                // enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: ((index, reason) {
                  setState(() {
                    index_image = index;
                  });

                  // return ;
                }),
                autoPlayInterval: const Duration(
                  seconds: 10,
                )),
            itemBuilder: (context, index, realIndex) {
              final urlImage2 = urlImages2[index];

              return buildImages2(urlImage2, index, urlImages2.length);
            },
          ),
        ),
        // AnimatedSmoothIndicator
        Center(
            child: AnimatedSmoothIndicator(
                effect: const ColorTransitionEffect(
                  // dotColor: Color(0xFFFEB13B),
                  activeDotColor: Color(0xFFFEB13B),
                  dotHeight: 4,
                  dotWidth: 4,
                  spacing: 5,
                ),
                activeIndex: index_image,
                count: urlImages2.length)),
        const SizedBox(height: 8),

        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("image/Document Text.png"),
                  const SizedBox(width: 10),
                  Text(
                    "ข่าวสารและกิจกรรม",
                    style: GoogleFonts.kanit(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    style:
                        IconButton.styleFrom(padding: const EdgeInsets.all(0)),
                    icon: Image.asset(
                      'image/arrow_right2.png',
                      width: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        widgetNewsAndActivities(
            'image/News and Activities/NewsAndActivities1.png',
            '25 ร้านนั่งชิล ฟีลดนตรีสด กรุงเทพ อัปเดต 2022 สายชิลห้ามพลาด ...',
            'เป็นแหล่งรวมที่สุดของไลฟ์สไตล์สุดฮิป...'),
        const SizedBox(height: 5),
        widgetNewsAndActivities(
            'image/News and Activities/NewsAndActivities2.png',
            'ศบค.ปรับพื้นที่คุมโควิดเหลือเหลือง และฟ้า ดื่มเหล้าในร้านอาหารได้ถึง...',
            'ศบค.มีมติปรับพื้นที่คุมโควิดใหม่เริ่ม 1 ...'),
        const SizedBox(height: 5),
        widgetNewsAndActivities(
            'image/News and Activities/NewsAndActivities3.png',
            '5 ร้าน Hangout ในกรุงเทพฯ นั่งชิล-รับลม หลังเลิกงานขอตี้หน่อย',
            'เพราะช่วงเวลาหลังเลิกงานเป็นช่วงที่เรา...'),
        // const SizedBox(height: 10),

        const SizedBox(height: 50),
      ],
    );
  }
}
