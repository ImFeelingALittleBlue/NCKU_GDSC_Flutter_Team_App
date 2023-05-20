import 'package:url_launcher/url_launcher.dart';

class UrlService {
  //open url(website) in app
  static Future<void> launchWebsite(
      String scheme, String url, String path) async {
    final Uri uri = (path != "")
        ? Uri(scheme: scheme, host: url, path: path)
        : Uri(scheme: scheme, host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw "Can not launch the url";
    }
  }
}
