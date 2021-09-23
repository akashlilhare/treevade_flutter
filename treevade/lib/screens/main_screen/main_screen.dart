import 'package:flutter/material.dart';
import 'package:treevade_flutter/constants/constants.dart';

import 'main_header_secation.dart';
import 'main_screen_section.dart';
import 'navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationBar(),
      backgroundColor: Constants().mainBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              MainHeaderSection(),
              MainBodySection(),
            ],
          ),
        ),
      ),
    );
  }
}
