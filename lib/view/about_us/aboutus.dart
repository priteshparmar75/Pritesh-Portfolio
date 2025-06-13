import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pritesh_portfolio/model/certificate_model.dart';

import '../../res/constants.dart';
import '../../view model/responsive.dart';
import '../certifications/components/certification_grid.dart';
import '../projects/components/title_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            if (Responsive.isLargeMobile(context)) const SizedBox(
              height: defaultPadding,
            ),
            const TitleText(prefix: '', title: 'Summary'),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: Responsive.isMobile(context) ? double.infinity : 500,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius:  10,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius:  10,
                    ),
                  ]),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: bgColor),
                child: Center(
                  child: Text(
                      "Highly skilled and detail-oriented software developer with 6+ years of experience designing, developing, and deploying enterprise-level applications. Proficientin multiple programming languages, software development methodologies, and database management systems. Strong problem-solving skills and ability to work effectively in a team-based environment.",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                      .marginAll(20),
                ),
              ),
            ).marginAll(20),
            if (Responsive.isLargeMobile(context))
              const SizedBox(
                height: defaultPadding,
              ),
            const TitleText(prefix: 'Work', title: 'Experience'),
            const SizedBox(
              height: defaultPadding,
            ),
            Expanded(
              child: Responsive(
                desktop: CertificateGrid(
                  crossAxisCount: 3,
                  ratio: 1.5,
                  certificate: companyList,
                ),
                extraLargeScreen: CertificateGrid(
                    crossAxisCount: 4, ratio: 1.6, certificate: companyList),
                largeMobile: CertificateGrid(
                    crossAxisCount: 1, ratio: 1.8, certificate: companyList),
                mobile: CertificateGrid(
                    crossAxisCount: 1, ratio: 1.4, certificate: companyList),
                tablet: CertificateGrid(
                    ratio: 1.7, crossAxisCount: 2, certificate: companyList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
