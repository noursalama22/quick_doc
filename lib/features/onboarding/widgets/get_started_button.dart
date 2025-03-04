import 'package:flutter/material.dart';
import 'package:quick_doc/core/helpers/extensions.dart';
import 'package:quick_doc/core/routing/routes.dart';
import 'package:quick_doc/core/theming/colors.dart';
import 'package:quick_doc/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 12,
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(
          ColorManager.mainBlue,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all<Size>(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
