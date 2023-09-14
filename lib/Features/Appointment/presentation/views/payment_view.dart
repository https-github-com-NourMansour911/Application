import 'package:e_gem/Features/Appointment/presentation/views/bodies/payment_view_body.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: PaymentViewBody()));
  }
}
