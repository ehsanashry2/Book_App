import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHandler {
  static Future<void> openURL({required String url}) async {
    try {
      if (await launchUrl(Uri.parse(url),
          mode: LaunchMode.externalApplication)) {}
    } catch (e) {
      rethrow;
    }
  }
}
