import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transformation extends StatelessWidget {
  const Transformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        mainAxisExtent: 165,
      ),
      shrinkWrap: true,
      children: [
        Card(
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
                Image.asset("assets/images/transformation.png",width: double.infinity,fit: BoxFit.fitHeight,),
                SizedBox(height: 8,),
                Text('Ahmed Mohsen',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3,),
                Text('20 Years',
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
            ),
          ),
        ),
      ],
    );
  }
}
