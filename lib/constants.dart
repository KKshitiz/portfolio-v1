import 'package:flutter/material.dart';

//avatar
var kAvatarImage = Container(
  decoration: BoxDecoration(shape: BoxShape.circle),
  child: Image(
    fit: BoxFit.contain,
    image: AssetImage('images/circle-avatar.png'),
  ),
);
String kAvatarName = "Kshitiz Kamal";
double kAvatarRadius = 50.0;
double kBorderWidth = 10.0;
Color kBorderColor = Color(0xff3f2f2c);

//social
//Insert you profile links
String kFacebookUrl = 'https://www.facebook.com';
String kGithubUrl = 'https://www.github.com/KKshitiz';
String kLinkedInUrl = 'https://www.linkedin.com';
String kTwitterUrl = 'https://www.twitter.com';
String kInstagramUrl = 'https://www.instagram.com';

//about
List<String> kProfession = ['developer', 'designer', 'programmer', 'polymath'];
int kNoOfScreens = 7;
String kJobTitle = 'Programmer and Developer';
String kAbout =
    'I am an engineering student currently pursuing my B.Tech from NIT, Jaipur. I am a determined and motivated individual with a desire to constantly learn and try out new things.';
String kAboutIntro =
    'I spend most of my time programming and developing software.';
String kAboutExtra =
    'I\'m currently learning to make mobile, web and desktop apps using Flutter. And guess what? This web-app is made using the Flutter!';
String kContactText =
    'If you have any questions, suggestions, opportunities or just wanted to say Hello, feel free to contact me.';
String kResumeText = 'Download my resume in pdf format from here.';
String kHobbiesText = 'And that\'s how I utilize my spare time.';

//styling
TextStyle kMainHeading = TextStyle(
  color: Colors.blue[700],
  fontSize: 40,
  fontWeight: FontWeight.bold,
);
TextStyle kSubHeading = TextStyle(
  color: Colors.grey[700],
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

TextStyle kNormalText = TextStyle(
  color: Colors.grey[700],
  fontSize: 15,
  fontWeight: FontWeight.w300,
);
