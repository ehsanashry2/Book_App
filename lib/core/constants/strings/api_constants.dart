

class ApiConstance {
  //----------------------------------SOCIAL MEDIAL AUTH-----------------------------------//

  static const String socialLogin = '/app/social-login';
  /* static const String googleRedirectUrlIos =
      'com.googleusercontent.apps.$googleIosClientId:/oauthredirect';
  static const String googleRedirectUrlAndroid =
      'com.googleusercontent.apps.$googleAndroidClientId:/oauthredirect'; */
  //  static  const googleIssuer = 'https://accounts.google.com';

  /* static String redirectUrl() {
    if (Platform.isAndroid) {
      return googleRedirectUrlAndroid;
    } else if (Platform.isIOS) {
      return googleRedirectUrlIos;
    }
    return '';
  } */

  //----------------------------------BASE URL-----------------------------------//
  static const String baseUrl =
      'https://bulka.thesoftwarecompany.io/public/api/v1';
//------------------------------AUTHENTICATION--------------------------------//
  static const String login = '/app/login';
  static const String register = '/app/client/register';
//---------------------------------CATEGORY----------------------------------//
  static const String categories = '/app/categories';
  static const String categoriesProducts = '/app/ads/search';
//---------------------------------FAVOURITE----------------------------------//
/*   static String toggleFavourite(ToggleFavouriteParams params) =>
      '/app/fav-ad/${params.adId}'; */

  //---------------------------------ABOUT US----------------------------------------//
  static const String aboutUsLinks = '/app/social';
  static const String terms = '/app/terms';
//---------------------------------SUPPORT----------------------------------------//
  static const String emailSupport = '/app/profile/contact';
  //---------------------------------FAQ-----------------------------------------//
  static const String faq = '/app/faq';
//---------------------------------LOGOUT------------------------------------//
  static const String logout = '/app/logout';
}
