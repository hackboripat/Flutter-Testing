import 'package:flutter/material.dart';
import 'package:flutter_application_testing/home.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "สวัสดี",
      // theme: ThemeData(
      //     brightness: Brightness.dark, primaryColor: Color(0xFFFDD84D)),
      // theme: ThemeData(
      //   primaryColor: Color(0xFFFDD84D),
      // ),
      home: Scaffold(
        backgroundColor: Color(0xFF121416),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // toolbarOpacity: 0.5,
          // bottomOpacity: 1,
          elevation: 0,
          backgroundColor: Color(0xFF121416).withOpacity(0.9),
          // backgroundColor: Colors.transparent,

          title: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "สวัสดี Jenny",
                  style: GoogleFonts.kanit(
                      fontStyle: FontStyle.normal, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.asset(
                    'image/Vector.png',
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  SizedBox(
                    // alignment: Alignment.center,
                    height: 30,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(1.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            // Container()
                            Text(
                              "บึงกุ่ม, กรุงเทพๆ",
                              style: GoogleFonts.kanit(
                                // fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                // fontSize: 16,
                              ),
                            ),
                            const Opacity(
                              opacity: 0.7,
                              child: SizedBox(
                                width: 30,
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ]),
              ],
            ),
          ),
          leading: Image.asset('image/Ellipse.png'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'image/favorite_border.png',
                height: 50,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'image/search.png',
                height: 50,
              ),
              // color: Color(0xFFF6AF3E),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        body: homewidget(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // fixedColor: Colors.white,
          backgroundColor: const Color(0x00121416),
          fixedColor: Colors.yellow[300],
          // selectedItemColor: Color(0xBABABA),
          unselectedItemColor: Colors.white60,
          // backgroundColor: Colors.white,
          items: [
            // Container(),
            BottomNavigationBarItem(
              icon: Image.asset("image/Subtract.png"),
              label: 'หน้าหลัก',
              // backgroundColor: Color(0xFF121416),
            ),
            // BottomNavigationBarItem(
            //   icon: Image.asset("image/note.png"),
            //   label: 'รายการจอง',
            // ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 45,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset("image/note.png"),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 58, 52),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 20,
                        height: 15,
                        child: Text(
                          '5',
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: 'รายการจอง',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 50,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset("image/messages.png"),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 58, 52),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 20,
                        height: 15,
                        child: Text(
                          '1',
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              label: 'ข้อความ',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 45,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset("image/notification_active.png"),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 58, 52),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 20,
                        height: 15,
                        child: Text(
                          '10',
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: 'แจ้งเตือน',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("image/user.png"),
              label: 'บัญชี',
            ),
          ],
        ),
      ),
    );
  }
}
