import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/gradient_borders.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController collegecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController idcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  Map<String,TextEditingController> formModel = {};

  @override
  void initState() {
    formModel = {
      "NAME:" : namecontroller ,
      "COLLEGE:" : collegecontroller ,
      "PHONE NUMBER:" : phonecontroller ,
      "SCH ID:" : idcontroller ,
      "ADDRESS:" : addresscontroller ,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030D18),
      body: Stack(
        children: [
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10
              ),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context,int index) => Opacity(opacity: 0.2,child: Image.asset('assets/images/griddot.png'))
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [Stack(
                alignment: AlignmentDirectional(0,-1),
                children: [
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Image.asset('assets/images/hq720.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,),),
                  Container(
                    width: double.infinity,
                    height: 265,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF000101),
                          Color(0xFF000101),
                          Color(0xB0000000),
                          Color(0xEA030D18)
                        ],
                        stops: [0, 0.18, 0.7, 1],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                    child: Container(
                      clipBehavior: Clip.none,
                      width: 140,
                      height: 140,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: 7,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 15,
                                sigmaY: 15,
                                tileMode: TileMode.clamp,
                              ),
                              child: ClipOval(
                                child: Container(
                                  width: 143,
                                  height: 143,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: CachedNetworkImage(
                                    fadeInDuration:
                                    Duration(milliseconds: 500),
                                    fadeOutDuration:
                                    Duration(milliseconds: 500),
                                    imageUrl:
                                    'https://s3-alpha-sig.figma.com/img/4bb1/30fc/402b1538a582d81dd445d1019089a8aa?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YdqpHx9i9xV8O63JYnbfog21251xcnlvt5O0zfJ4Xyr-Cpz7KVj4vkBb6z8DIBLbCp9FU3Wuwzqznc9NCENdaoycdbAE5MMcm1oDU1iuv0KXA3BkabA~MskRt-dtG4spfJwwCdszEYE4RZid-yMYNChIWLdZJ35Q0p5VY74mMbxGpPqe1m0yUDoaBYQ1JOVeXHqHm6DtxR6Bo0xlGozAA0CeQgHvEH2gTj9SwMyrMakmMQdJAIS7x~ZqBBmchZbomQKW2yjBgCItxDM5Q0oNvIpZxZypOtFid3jVKe6j2YtuXLEKfkgsz0HryuIfeSVovGjuygTEfDtzpuAELyH3RA__',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0, 12, 0, 0),
                              child: ClipOval(
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: CachedNetworkImage(
                                    fadeInDuration:
                                    Duration(milliseconds: 500),
                                    fadeOutDuration:
                                    Duration(milliseconds: 500),
                                    imageUrl:
                                    'https://s3-alpha-sig.figma.com/img/4bb1/30fc/402b1538a582d81dd445d1019089a8aa?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YdqpHx9i9xV8O63JYnbfog21251xcnlvt5O0zfJ4Xyr-Cpz7KVj4vkBb6z8DIBLbCp9FU3Wuwzqznc9NCENdaoycdbAE5MMcm1oDU1iuv0KXA3BkabA~MskRt-dtG4spfJwwCdszEYE4RZid-yMYNChIWLdZJ35Q0p5VY74mMbxGpPqe1m0yUDoaBYQ1JOVeXHqHm6DtxR6Bo0xlGozAA0CeQgHvEH2gTj9SwMyrMakmMQdJAIS7x~ZqBBmchZbomQKW2yjBgCItxDM5Q0oNvIpZxZypOtFid3jVKe6j2YtuXLEKfkgsz0HryuIfeSVovGjuygTEfDtzpuAELyH3RA__',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 1),
                            child: ClipOval(
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_a_photo,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/profileTecnoBanner.png',
                        width: 350,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(height: 22,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x00555555), Color(0xFF01A3F5)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(-1, 0),
                            end: AlignmentDirectional(1, 0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 13,),
                    Text(
                      'PERSONAL DETAILS',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x00555555), Color(0xFF01A3F5)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(1, 0),
                            end: AlignmentDirectional(-1, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22,),
                Padding(padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                  child: Container(
                    width: double.infinity,
                    height: 360,//MediaQuery.sizeOf(context).height*0.47,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x357087A4),
                          Color(0x352D2F94),
                          Color(0x3704082F),
                          Color(0x36000000)
                        ],
                        stops: [0, 0.29, 0.54, 0.79],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0x597D8292),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Form(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                          children: [Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: formModel.keys.map((e) => Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Container(
                                    width: (MediaQuery.sizeOf(context).width-100)*0.6,
                                    height: 22,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: const GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white, Colors.white24],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        width: 0.3,
                                      ),
                                    ),
                                    child: TextFormField(
                                      scrollPadding: EdgeInsets.zero,
                                      cursorHeight: 22,
                                      cursorWidth: 1,
                                      maxLines: 1,
                                      controller: formModel[e],
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                                        isDense: true,
                                        labelStyle:
                                        TextStyle(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        hintStyle:
                                        TextStyle(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(5),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(255, 89, 99, 1),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                        OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(255, 89, 99, 1),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                      cursorColor:
                                      Colors.white,
                                    ),
                                  ),
                                ],
                              ),).toList(),
                            ),
                          ),
                          SizedBox(height: 15,),
                          TextButton.icon(onPressed: (){},
                            label: Text("LOG OUT",
                              style: TextStyle(color: Colors.white),
                            ),
                            icon: Icon(
                              Icons.logout_sharp,
                              color: Colors.white,
                              size: 15,
                            ),
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Color.fromRGBO(47, 98, 156, 1)),
                              elevation: MaterialStateProperty.all(6),
                              shadowColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                return Color.fromRGBO(47, 98, 156, 1);
                                else if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(47, 98, 156, 1);
                                return Colors.transparent;
                                }
                                ),
                              minimumSize: MaterialStateProperty.all(Size(190, 32)),
                                padding: MaterialStateProperty.all(EdgeInsets.zero),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered))
                                  return Color.fromRGBO(47, 98, 156, 1);
                                  // else if (states.contains(MaterialState.pressed))
                                  //   return Color.fromRGBO(47, 98, 156, 1);
                                  return Colors.transparent;
                                }
                                ),
                              side: MaterialStateProperty.all(BorderSide(
                                color: Colors.white,
                                width: 0.6,
                              )),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
                            ),
                          )]
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 130,),
              ],
            ),
          ),
        ]
      )
    );
  }
}
