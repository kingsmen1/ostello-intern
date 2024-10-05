import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YouTubeIntegrationActivationPage extends StatelessWidget {
  const YouTubeIntegrationActivationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Integration'),centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 74.w,
                height: 74.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icons/youtube_big_icon.png',
                    width: 52.w,
                    height: 52.h,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'YouTube Integration',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.h),
              Text(
                "\"This integration will grant Ostello the ability to fully manage your YouTube channel, which includes tasks such as creating livestream events, scheduling broadcasts, and overseeing livestream management directly from our platform.\"",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7D23E0),
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                  child: Text(
                    'Activate Integration',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
