import 'package:flutter/material.dart';

//avatar
var kAvatarImage = Container(
    decoration: BoxDecoration(shape: BoxShape.circle),
    child: Image(
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://bootstrapmade.com/demo/themes/iPortfolio/assets/img/profile-img.jpg'),
    ));
String kAvatarName = "Kshitiz Kamal";
double kAvatarRadius = 50.0;
double kBorderWidth = 10.0;
Color kBorderColor = Color(0xff3f2f2c);

//social
//Insert you profile links
String kFacebookUrl = 'https://www.facebook.com';
String kGithubUrl = 'https://www.github.com';
String kLinkedInUrl = 'https://www.linkedin.com';
String kTwitterUrl = 'https://www.twitter.com';
String kInstagramUrl = 'https://www.instagram.com';

//about
List<String> kProfession = ['developer', 'designer', 'programmer', 'polymath'];

//system
//Warning do not change this
