import 'package:flutter/material.dart';
import 'package:pritesh_portfolio/view/projects/components/project_link.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;

  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
        )
            : const SizedBox(
                height: defaultPadding,
              ),
        Text(
          projectList[index].description,
          style: const TextStyle(color: Colors.grey, height: 1.5),
          maxLines: projectList[index].link.isEmpty ? 4 : size.width > 700 && size.width < 750
              ? 3
              : size.width < 470
                  ? 4
                  : size.width > 600 && size.width < 700
                      ? 6
                      : size.width > 900 && size.width < 1060
                          ? 6
                          : 4,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        ProjectLinks(
          index: index,
        ),
        Responsive.isMobile(context) ? const SizedBox(): const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
