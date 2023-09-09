import 'package:flutter/material.dart';

class CaptainDetails extends StatefulWidget {
  const CaptainDetails({Key? key}) : super(key: key);

  @override
  State<CaptainDetails> createState() => _CaptainDetailsState();
}

class _CaptainDetailsState extends State<CaptainDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/cap1.png",
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Mohamed Ali',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 206,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 86,
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 32.10,
                      right: 22.07,
                      bottom: 16,
                    ),
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFEFEF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5, color: Color(0xFFAF4141)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              '7',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFBB2525),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Experience',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF110805),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xFFBB2525),
                          thickness: 1.5,
                        ),
                        Column(
                          children: [
                            Text(
                              '46',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFBB2525),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Completed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF110805),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xFFBB2525),
                          thickness: 1.5,
                        ),
                        Column(
                          children: [
                            Text(
                              '25',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFBB2525),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Active Clients',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF110805),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 41,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Color(0xFFEFEFEF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context,
                              //   MaterialPageRoute(builder: (context) => const CaptainDetails()));
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(188, 41),
                              backgroundColor: const Color(0xFFBB2525),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Text(
                              'Reviews',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(180, 41),
                              backgroundColor: const Color(0xFFEFEFEF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Text(
                              'Transformation',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF848484),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
