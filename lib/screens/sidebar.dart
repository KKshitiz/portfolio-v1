import 'package:flutter/cupertino.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterportfoliowebsite/services/launch_url.dart';

//import custom widgets
import 'package:flutterportfoliowebsite/widgets/avatar_widget.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Avatar(),
          SizedBox(
            height: 15,
          ),
          Text(
            kAvatarName,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                icon: FontAwesomeIcons.facebookF,
                url: kFacebookUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.github,
                url: kGithubUrl,
              ),
              SocialIcon(
                icon: FontAwesomeIcons.instagram,
                url: kInstagramUrl,
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
          NavigationPane(),
          Text(
            '© Copyright $kAvatarName',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Designed by KKshitiz',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class NavigationPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavigationTile(
            icon: Icons.home,
            label: 'Home',
            isActive: true,
          ),
          NavigationTile(
            icon: Icons.person_outline,
            label: 'About',
            isActive: false,
          ),
          NavigationTile(
            icon: Icons.library_books,
            label: 'Resume',
            isActive: false,
          ),
          NavigationTile(
            icon: Icons.bookmark,
            label: 'Portfolio',
            isActive: false,
          ),
          NavigationTile(
            icon: Icons.settings_remote,
            label: 'Services',
            isActive: false,
          ),
          NavigationTile(
            icon: Icons.email,
            label: 'Contact',
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class NavigationTile extends StatelessWidget {
  NavigationTile({this.icon, this.label, this.isActive});
  final IconData icon;
  final String label;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? Colors.blue : Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              label,
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey,
                  fontSize: 15,
                  letterSpacing: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  SocialIcon({@required this.icon, this.url});
  final IconData icon;
  final url;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          launchUrlBrowser(url);
        },
        shape: CircleBorder(),
        padding: EdgeInsets.all(0),
        fillColor: Color(0xff312421),
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
