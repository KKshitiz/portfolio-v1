import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/services/launch_url.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, this.projectTitle, this.url, this.projectDescription}) : super(key: key);
  final projectTitle;
  final projectDescription;
  final url;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.2, 1.0),
                blurRadius: 20,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              projectTitle,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              projectDescription,
              style: kNormalText,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                launchUrlBrowser(url);
              },
              child: Text(
                'See project',
                style: TextStyle(color: Colors.blue[700], fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
