import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    print('invalid url $url');
  }
}

Future<void> launchUrlWebview(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    print('invalid url $url');
  }
}

void createEmail() async {
  const emailaddress =
      'mailto:skilite007@gmail.com?subject=Sample Subject&body=This is a Sample email';

  if (await canLaunch(emailaddress)) {
    await launch(emailaddress);
  } else {
    throw 'Could not Email';
  }
}
