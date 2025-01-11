import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Books",
               style: TextStyleHelper.font24W700Primary(themeNotifier),
              ),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyleHelper.font16W500underline(themeNotifier),
                  ),
                  const SizedBox(width:4),
                  SvgPicture.asset(
                    'assets/icons/arrow_forward.svg',
                    width: 20,
                    height: 20,
                    color: themeNotifier.textColor,
                  ),
                ],
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 182,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: themeNotifier.continarColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                CustomRowWithArrow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRowWithArrow extends StatelessWidget {
  const CustomRowWithArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ArrowItem(imagePath: 'assets/images/book11.png', label: 'Native Invisibility', percentage: 90),
        SizedBox(height: 16),
        ArrowItem(imagePath: 'assets/images/book7.png', label: 'Cold Lake', percentage: 50),
        SizedBox(height: 16),
        ArrowItem(imagePath: 'assets/images/book22.png', label: 'Lightfall', percentage: 20),
      ],
    );
  }
}
class ArrowItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final double percentage;

  const ArrowItem({super.key, required this.imagePath, required this.label, required this.percentage});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 34,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyleHelper.font16W500Primary(themeNotifier),
            ),
            SvgPicture.asset(
              'assets/icons/arrow_forward.svg',
              width: 20,
              height: 20,
              color: themeNotifier.textColor,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '${percentage.toStringAsFixed(0)}%',
               style: TextStyleHelper.font14W400Primary(themeNotifier),
            ),
            const SizedBox(width: 8),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.darkBackground), // Border color changed to black
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: CustomCircleProgressIndicator(percentage: percentage),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomCircleProgressIndicator extends StatelessWidget {
  final double percentage;

  const CustomCircleProgressIndicator({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(16, 16),
      painter: CircleProgressPainter(percentage: percentage),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double percentage;

  CircleProgressPainter({required this.percentage});

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = AppColors.percentage
      ..style = PaintingStyle.fill;

    double radius = size.width / 2;
    double startAngle = -3.14 / 2;
    double sweepAngle = 2 * 3.14 * (percentage / 100);
    canvas.drawCircle(Offset(radius, radius), radius, circlePaint);
    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      startAngle,
      sweepAngle,
      true,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

