import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Plan extends StatefulWidget {
  Plan({Key? key, required this.choosedPlan,
    required this.planType,
    required this.planPrice,
    required this.planTime,
    required this.groupValue,

  }) : super(key: key);

   var choosedPlan,planType,planPrice,planTime,groupValue;

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: k_lightGrey,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0,
            color: widget.choosedPlan == widget.groupValue? Color(0xFFBB2525): Color(0xff848484),),
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
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fillColor:MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return (widget.choosedPlan == widget.groupValue) ? Color(0xFFBB2525) : Color(0xff848484);
                          }),
                      value: widget.choosedPlan,
                      groupValue: widget.groupValue,
                      onChanged:  (val) {
                        setState(() {
                          widget.groupValue = val!;
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
                          widget.choosedPlan,
                          style: TextStyle(
                            color: Color(0xFF110906),
                            fontSize: 15,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.planType,
                          style: TextStyle(
                            color: widget.choosedPlan == widget.groupValue? Color(0xFFBB2525): Color(0xff848484),
                            fontSize: 9,
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
                  '\$${widget.planPrice}',
                  style: TextStyle(
                    color: Color(0xFF110906),
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '/${widget.planTime}',
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
    );
  }
}
