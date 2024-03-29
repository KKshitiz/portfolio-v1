import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterportfoliowebsite/services/launch_url.dart';
import 'package:flutterportfoliowebsite/widgets/avatar_widget.dart';

class SideBar extends StatelessWidget {
  const SideBar(this.currentScreen, {Key? key}) : super(key: key);
  final int currentScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Avatar(
            radius: 50,
          ),
          Text(
            kAvatarName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              SocialIcon(
                icon: FontAwesomeIcons.instagram,
                url: kInstagramUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.github,
                url: kGithubUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.terminal,
                url: kStopstalkUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.twitter,
                url: kTwitterUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.linkedinIn,
                url: kLinkedInUrl,
              )
            ],
          ),
          NavigationPane(currentScreen),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '© Copyright $kAvatarName',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
              const Text(
                'Designed by KKshitiz',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavigationPane extends StatelessWidget {
  const NavigationPane(this.currentScreen, {Key? key}) : super(key: key);
  final int currentScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavigationTile(
            icon: Icons.home,
            label: 'Home',
            isActive: 1 == currentScreen,
          ),
          NavigationTile(
            icon: Icons.person_outline,
            label: 'About',
            isActive: 2 == currentScreen,
          ),
          NavigationTile(
            icon: Icons.settings,
            label: 'Projects',
            isActive: 3 == currentScreen,
            onPress: () {
              launchUrlBrowser('github.com');
            },
          ),
          NavigationTile(
            icon: Icons.book,
            label: 'Education',
            isActive: 4 == currentScreen,
          ),
          NavigationTile(
            icon: Icons.videogame_asset,
            label: 'Hobbies',
            isActive: 5 == currentScreen,
          ),
          NavigationTile(
            icon: Icons.library_books,
            label: 'Resume',
            isActive: 6 == currentScreen,
          ),
          NavigationTile(
            icon: Icons.email,
            label: 'Contact',
            isActive: 7 == currentScreen,
          ),
        ],
      ),
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile({Key? key, this.icon, this.label, this.isActive, this.onPress}) : super(key: key);
  final IconData? icon;
  final String? label;
  final bool? isActive;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isActive! ? Colors.blue : Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                label!,
                style: TextStyle(
                    color: isActive! ? Colors.white : Colors.grey,
                    fontSize: 15,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.icon, this.url}) : super(key: key);
  final IconData icon;
  final url;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          launchUrlBrowser(url);
        },
        shape: const CircleBorder(),
        fillColor: const Color(0xff312421),
        hoverColor: Colors.blue,
        child: Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}
