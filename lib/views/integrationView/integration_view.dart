import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/views/integrationView/components/integration_card.dart';
import 'package:ostello/views/youtubeIntegrateView/youtube_integrate_view.dart';

class IntegrationView extends StatelessWidget {
  const IntegrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Integration' ),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Column(
          children: [
            IntegrationCard(
              title: 'YouTube Integration',
              description:
                  'This integration will grant Ostello the ability to fully manage your YouTube channel.',
              isActive: false,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const YouTubeIntegrationPage(
                      isActive: false,
                    ),
                  )),
              icon: "assets/icons/youtube_icon.png",
              iconColor: Colors.purple,
            ),
            SizedBox(height: 16.h),
            IntegrationCard(
              title: 'Google Map Reviews Integration',
              description:
                  'This integration will grant Ostello the ability to fully manage your Google Map reviews.',
              isActive: true,
              onPressed: () {},
              icon: "assets/icons/maps_icon.png",
              iconColor: Colors.green,
            ),
            SizedBox(height: 16.h),
            IntegrationCard(
              title: 'Whatsapp Integration',
              description:
                  'This integration will grant Ostello the ability to fully manage your WhatsApp communication.',
              isActive: true,
              onPressed: () {},
              icon: "assets/icons/whatsapp_icon.png",
              iconColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
