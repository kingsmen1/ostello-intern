import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveInactvieChip extends StatelessWidget {
  final bool isActive;
  const ActiveInactvieChip({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return !isActive
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              'Inactive',
              style: TextStyle(
                color: Colors.red,
                fontSize: 10.sp,
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              'Active',
              style: TextStyle(
                color: Colors.green,
                fontSize: 10.sp,
              ),
            ),
          );
  }
}
