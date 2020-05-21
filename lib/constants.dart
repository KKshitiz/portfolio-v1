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
int kNoOfScreens = 2;
String kJobTitle = 'Programmer and Developer';
String kAbout =
    'I am an engineering student currently pursuing my B.Tech from NIT, Jaipur. I am a determined and motivated individual with a desire to constantly learn and try out new things.';
String kAboutIntro =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
String kAboutExtra =
    'Officiis eligendi itaque labore et dolorum mollitia officiis optio vero. Quisquam sunt adipisci omnis et ut. Nulla accusantium dolor incidunt officia tempore. Et eius omnis. Cupiditate ut dicta maxime officiis quidem quia. Sed et consectetur qui quia repellendus itaque neque. Aliquid amet quidem ut quaerat cupiditate. Ab et eum qui repellendus omnis culpa magni laudantium dolores.';

//contact section
String kContactText =
    'If you have any questions, suggestions, opportunities or just wanted to say Hello, feel free to contact me.';

//styling
TextStyle kMainHeading = TextStyle(
  color: Colors.blue[700],
  fontSize: 40,
  fontWeight: FontWeight.bold,
);
TextStyle kSubHeading = TextStyle(
  color: Colors.grey[700],
  fontSize: 20,
);

TextStyle kNormalText = TextStyle(
  color: Colors.grey[700],
  fontSize: 15,
);
