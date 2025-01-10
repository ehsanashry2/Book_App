import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/shared/shimmer/shimmer_container_widget.dart';

class ShimmerCirculerIconWidget extends StatelessWidget {
  const ShimmerCirculerIconWidget({super.key, this.size, this.child});
  final double? size;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ShimmerContainerWidget(
      height: size ?? 35.h,
      width: size ?? 35.w,
      padding: EdgeInsets.all(6.r),
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFC4C4C4)),
        color: Colors.grey[300],
      ),
      child: child,
    );
  }
}
