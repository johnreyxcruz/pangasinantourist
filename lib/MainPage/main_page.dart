import 'package:flutter/material.dart';
import 'package:pangasinantourist/MainPage/desktop_page.dart';
import 'package:pangasinantourist/MainPage/mobile_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/seepangasinan.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.1), // 10% opacity
            BlendMode.dstATop,
          ),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1280) {
            return const DesktopPage();
          } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
            return const DesktopPage();
          } else {
            return const MobilePage();
          }
        },
      ),
    );
  }
}
