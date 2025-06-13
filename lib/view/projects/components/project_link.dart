import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pritesh_portfolio/view%20model/responsive.dart' show Responsive;
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;

  const ProjectLinks({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return projectList[index].link.isEmpty
        ? const SizedBox()
        : /*Responsive.isMobile(context) ?*/ Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Row(
          children: [
            Text(
                projectList[index].link.contains("play") || projectList[index].link.contains("apple")
                    ? "Check on Store"
                    : 'Check on Github',
                style: const TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              child: SvgPicture.asset(
                projectList[index].link.contains("play") || projectList[index].link.contains("apple")
                    ? 'assets/icons/play.svg'
                    : 'assets/icons/github.svg',
                height: 15,
                width: 15,
              ),
            ).marginAll(5),
          ],
        )),
        InkWell(
          onTap: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: const Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
        ).marginOnly(left: 5,top: 5,bottom: 5)
      ],
    ).marginAll(5) /*:Row(
            children: [
              Expanded(child: Row(
                children: [
                  Text(
                      projectList[index].link.contains("play")
                          ? "Check on PlayStore"
                          : 'Check on Github',
                      style: const TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(projectList[index].link));
                    },
                    icon: SvgPicture.asset(
                      projectList[index].link.contains("play")
                          ? 'assets/icons/play.svg'
                          : 'assets/icons/github.svg',
                      height: Responsive.isMobile(context) ? 15 : 30,
                      width: Responsive.isMobile(context) ? 15 : 30,
                    ),
                  ),
                ],
              )),

              TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(projectList[index].link));
                },
                child: const Text(
                  'Read More>>',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              )
            ],
          )*/;
  }
}
