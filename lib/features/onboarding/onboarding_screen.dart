import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_doc/core/theming/styles.dart';
import 'package:quick_doc/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:quick_doc/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:quick_doc/features/onboarding/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 30.h,
              top: 30.h,
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
