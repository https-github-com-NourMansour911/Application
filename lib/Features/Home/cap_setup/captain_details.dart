import 'package:e_gem/Features/Home/cap_setup/reviews.dart';
import 'package:e_gem/Features/Home/cap_setup/transformation.dart';
import 'package:flutter/material.dart';

class CaptainDetails extends StatefulWidget {
  const CaptainDetails({Key? key}) : super(key: key);

  @override
  State<CaptainDetails> createState() => _CaptainDetailsState();
}

class _CaptainDetailsState extends State<CaptainDetails>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/mohamed_ali.png",
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
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
                  Container(
                    width: double.infinity,
                    height: 41,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFEFEF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    child: Material(
                      child: TabBar(
                          indicator: BoxDecoration(
                            color: Color(0xFFBB2525),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          unselectedLabelColor: Color(0xFF848484),
                          labelColor: Colors.white,
                          tabs: [
                            Tab(
                              child: Text(
                                'Reviews',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              height: 41,
                            ),
                            Tab(
                              child: Text(
                                'Transformation',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              height: 41,
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 210,
                    width: double.infinity,
                    child: TabBarView(controller: _tabController, children: [
                      Review(),
                      Transformation(),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 53,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosePlan()));
                      },
                      child: Text(
                        'Book an Appointment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBB2525),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
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
