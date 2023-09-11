import 'package:e_gem/Features/Home/ui/views/widgets/bodies/appointment_view_body.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: AppointmentViewBody()),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(16),
        child: WideButton(title: 'Book an Appointment',
          onPressed: () => GoRouter.of(context).push(AppRouter.kCoachPlansView),
        ),
      ),
    );
  }
}
