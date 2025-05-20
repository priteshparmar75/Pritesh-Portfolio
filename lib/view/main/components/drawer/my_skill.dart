import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(tween: Tween(begin: 0.0,end: percentage), duration: const Duration(seconds: 1), builder: (context, value, child) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(image!,height: 15,width: 15,fit: BoxFit.cover,),
                const SizedBox(width: 5,),
                Text(title,style: const TextStyle(color: Colors.white),),
                const Spacer(),
                Text('${(value*100).toInt().toString()}%'),
              ],
            ),
            const SizedBox(height: defaultPadding/2,),
            /*LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.black,
              color: Colors.amberAccent,
            ),*/
            Stack(
              children: [
                // Background bar
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),

                // Foreground bar with gradient
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: value, // Progress value (0.0 to 1.0)
                  child: Container(
                    height: 6,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Colors.red, Colors.blue],),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ],
            )

          ],
        );
      },),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(percentage: 0.99, title: 'Android',image: 'assets/icons/android.png',),
        AnimatedLinearProgressIndicator(percentage: 0.97, title: 'Flutter',image: 'assets/icons/flutter.png',),
        AnimatedLinearProgressIndicator(percentage: 0.95, title: 'Java',image: 'assets/icons/java.png'),
        AnimatedLinearProgressIndicator(percentage: 0.98, title: 'Kotlin',image: 'assets/icons/kotlin.png'),
        AnimatedLinearProgressIndicator(percentage: 0.94, title: 'Dart',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(percentage: 0.90, title: 'Firebase',image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(percentage: 0.96, title: 'Sqlite',image: 'assets/icons/database.png'),
        AnimatedLinearProgressIndicator(percentage: 0.99, title: 'Responsive Design',image: 'assets/icons/ui_design.png'),
        AnimatedLinearProgressIndicator(percentage: 0.89, title: 'Clean Architecture',image: 'assets/icons/architechture.png'),
        AnimatedLinearProgressIndicator(percentage: 0.80, title: 'Bloc',image: 'assets/icons/bloc.png'),
        AnimatedLinearProgressIndicator(percentage: 0.95, title: 'Getx',image: 'assets/icons/getx.png'),
      ],);
  }
}
