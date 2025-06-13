

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pritesh_portfolio/model/certificate_model.dart';

import '../../res/constants.dart';
import '../../view model/getx_controllers/certification_controller.dart';
import '../../view model/responsive.dart';
import '../certifications/components/certification_grid.dart';
import '../projects/components/title_text.dart';

class Achievement extends StatelessWidget {
  final controller=Get.put(CertificationController());
  Achievement({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Achievement & ', title: 'License'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: CertificateGrid(crossAxisCount: 3,ratio: 1.5,certificate: certificateList,),
                  extraLargeScreen: CertificateGrid(crossAxisCount: 4,ratio: 1.6,certificate: certificateList),
                  largeMobile: CertificateGrid(crossAxisCount: 1,ratio: 1.8,certificate: certificateList),
                  mobile: CertificateGrid(crossAxisCount: 1,ratio: 1.4,certificate: certificateList),
                  tablet: CertificateGrid(ratio: 1.7,crossAxisCount: 2,certificate: certificateList)))
        ],
      ),
    );
  }
}

