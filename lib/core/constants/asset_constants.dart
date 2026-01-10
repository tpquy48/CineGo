// ignore_for_file: unused_field

part of 'constants.dart';
// class AppAssets {
//   static const String _basePath = 'assets/images';
//   static const String logoPath = '$_basePath/logos';
//   static const String placeholderPath = '$_basePath/placeholders';
// }

class Ic {
  static const String _iconPath = 'assets/icons';
  static const String cinego = '$_iconPath/cinego_icon.svg';
  // static const String icMovie = '$_iconPath/movie.svg';
}

class Img {
  static const String imageNetWorkBaseUrl = Env.imageBaseUrl;
  static const String _imgPath = 'assets/images';
  static const String defaultCardImage = '$_imgPath/unavailable_image.png';
  static const String cinego = '$_imgPath/cinego_logo.png';

  static String? networkUrl(String? relativeUrl) {
    if (relativeUrl == null || relativeUrl.isEmpty) {
      return null;
    }
    return '$imageNetWorkBaseUrl/$relativeUrl';
  }
}

// class Js {}

class MockApi {
  static const String _basePath = 'assets/mock_api';
  static const String cinemas = '$_basePath/cinemas.json';
  static const String seats = '$_basePath/seats.json';
  static const String rooms = '$_basePath/rooms.json';
  static const String showtimes = '$_basePath/showtimes.json';
  static const String foods = '$_basePath/foods.json';

  static String getPath(String fileName) {
    return '$_basePath/$fileName';
  }
}
