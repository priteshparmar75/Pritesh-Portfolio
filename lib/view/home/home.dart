import 'package:flutter/material.dart';
import 'package:pritesh_portfolio/view/about_us/aboutus.dart';
import 'package:pritesh_portfolio/view/intro/introduction.dart';
import 'package:pritesh_portfolio/view/main/main_view.dart';
import 'package:pritesh_portfolio/view/projects/project_view.dart';

import '../achievement/achievement.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      AboutUs(),
      ProjectsView(),
      //Certifications(),
      Achievement()
    ]);
  }
}
