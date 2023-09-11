import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({Key? key}) : super(key: key);

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool checkedValue = false;
  String? plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              alignment: Alignment(-0.9, -0.8),
              onPressed: () => Navigator.pop(context),
              icon: CircleAvatar(
                backgroundColor: Color(0xffEFEFEF),
                radius: 32,
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Image.asset(
                "assets/images/appoitment.png",
                width: 340,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCheck,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Establishing a healthy lifestyle',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCheck,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Nutrition plan and customized workout schedule for you',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCheck,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Nutrition plan and customized workout schedule for you',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCheck,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Customized Dietary Program Every 14 Days',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCheck,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Establishing a healthy lifestyle',
                  style: TextStyle(
                    color: Color(0xFF110805),
                    fontSize: 13,
                    fontFamily: 'Roboto',
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
              height: 65,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: plan == '3 months'
                        ? Color(0xFFBB2525)
                        : Color(0xff848484),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 36,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              //plan == '3 months'? Color(0xFFBB2525): Color(0xff848484),
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                return (plan == '3 months')
                                    ? Color(0xFFBB2525)
                                    : Color(0xff848484);
                              }),
                              value: '3 months',
                              groupValue: plan,
                              onChanged: (val) {
                                setState(() {
                                  plan = val;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3 Months',
                                  style: TextStyle(
                                    color: Color(0xFF110906),
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Basic',
                                  style: TextStyle(
                                    color: plan == '3 months'
                                        ? Color(0xFFBB2525)
                                        : Color(0xff848484),
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 41),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$150',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '/m',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 11,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              height: 65,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: plan == '6 months'
                        ? Color(0xFFBB2525)
                        : Color(0xff848484),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 36,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                return (plan == '6 months')
                                    ? Color(0xFFBB2525)
                                    : Color(0xff848484);
                              }),
                              value: '6 months',
                              groupValue: plan,
                              onChanged: (val) {
                                setState(() {
                                  plan = val;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '6 Months',
                                  style: TextStyle(
                                    color: Color(0xFF110906),
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Standard',
                                  style: TextStyle(
                                    color: plan == '6 months'
                                        ? Color(0xFFBB2525)
                                        : Color(0xff848484),
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 41),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$250',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '/m',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 11,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              height: 65,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: plan == '12 months'
                        ? Color(0xFFBB2525)
                        : Color(0xff848484),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 36,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                return (plan == '12 months')
                                    ? Color(0xFFBB2525)
                                    : Color(0xff848484);
                              }),
                              value: '12 months',
                              groupValue: plan,
                              onChanged: (val) {
                                setState(() {
                                  plan = val;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '12 Months',
                                  style: TextStyle(
                                    color: Color(0xFF110906),
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Premium',
                                  style: TextStyle(
                                    color: plan == '12 months'
                                        ? Color(0xFFBB2525)
                                        : Color(0xff848484),
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 41),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$450',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '/Y',
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 11,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            SizedBox(
              width: double.infinity,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChoosePlan()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBB2525),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  'Choose',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
