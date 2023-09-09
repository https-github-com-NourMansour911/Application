import 'package:e_gem/Features/Home/home/Captain/captain_details.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:e_gem/Features/Home/home/image_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final ImageSlider dots = new ImageSlider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/logo.png",height: 30,width: 30,),
                            const SizedBox(width: 5,),
                            Text('E-Gem',
                              style: TextStyle(
                                color: const Color(0xFF110805),
                                fontSize: 16,
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                height: 1.40,
                              ),)
                          ],
                        ),
                        Text(
                          'Hello, Yahia',
                          style: TextStyle(
                            color: const Color(0xFF110805),
                            fontSize: 24,
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            fontWeight: FontWeight.w600,
                            height: 1.79,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(Assets.imagesNotification,height: 30,width: 30,color: Color(0xFF626262),),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        child: SvgPicture.asset(Assets.imagesSearch,height: 30,width: 30,color: Color(0xFF626262),),
                      ),
                      labelText: 'Search your coach',
                      labelStyle: TextStyle(
                        color: Color(0xFF848484),
                        fontSize: 15,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.w400,
                      ),

                      fillColor: Color(0xFFEFEFEF),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(width: 0.25, color: Color(0xFF626262),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(child: ImageSlider(),
                  height: 166,width: double.infinity,),
                SizedBox(height: 15,),
                Text('Top rated', style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 19,
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 3,),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => CaptainDetails())
                  ),
                  child: SizedBox(width: 140, height: 190,
                    child: Card(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 0.25, color: Colors.transparent,),
                      ),
                      color: Color(0xFFEFEFEF),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/cap1.png",width: double.infinity,fit: BoxFit.fitHeight,),
                            SizedBox(height: 8,),
                            Text('Mohamed Ali',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text('Bodybuilding',
                              style: TextStyle(
                                color: Color(0xFFBB2525),
                                fontSize: 10,
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 3,),
                            Row(
                              children: [
                                Text('7 Years Ex',
                                  style: TextStyle(
                                    color: Color(0xFF848484),
                                    fontSize: 12,
                                    fontFamily: GoogleFonts.openSans().fontFamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 25,),
                                Icon(Icons.star_rate_rounded,color: Colors.amber,size: 18,),
                                Text('5',
                                  style: TextStyle(
                                    color: Color(0xFF848484),
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.openSans().fontFamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Text('Super Heroes ',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 18,
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontWeight: FontWeight.w600,
                    height: 2.39,
                  ),
                ),
                SizedBox(height: 3,),
                SizedBox(width: 140, height: 190,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 0.25, color: Colors.transparent,),
                    ),
                    color: Color(0xFFEFEFEF),
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/cap2.png",width: double.infinity,fit: BoxFit.fitHeight,),
                          SizedBox(height: 8,),
                          Text('Salma Ibrahim',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text('Cardio',
                            style: TextStyle(
                              color: Color(0xFFBB2525),
                              fontSize: 10,
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Text('7 Years Ex',
                                style: TextStyle(
                                  color: Color(0xFF848484),
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 25,),
                              Icon(Icons.star_rate_rounded,color: Colors.amber,size: 18,),
                              Text('5',
                                style: TextStyle(
                                  color: Color(0xFF848484),
                                  fontSize: 10,
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
