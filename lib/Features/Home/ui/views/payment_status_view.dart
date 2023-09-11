import 'package:e_gem/Features/Home/ui/views/widgets/bodies/payment_status_view_body.dart';
import 'package:flutter/material.dart';

class PaymentStatusView extends StatelessWidget {
  const PaymentStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: PaymentStatusViewBody()));
  }
}
