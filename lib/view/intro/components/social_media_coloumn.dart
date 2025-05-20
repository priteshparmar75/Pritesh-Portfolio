import 'package:flutter/material.dart';
import 'package:pritesh_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/pritesh-parmar-3136a2148/'))),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/priteshparmar75')),),
        SocialMediaIcon(icon: 'assets/icons/stackoverflow.svg',onTap: () => launchUrl(Uri.parse('https://stackoverflow.com/users/13446568/pritesh-parmar')),),
       // const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        //const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        //const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
      ],
    );
  }
}
