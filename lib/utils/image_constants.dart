class ImageConstants {
  ImageConstants._init();

  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ///APP
  String get logo => toPng('logo_splash');
  String get marca => toPng('marca');
  String get google => toPng('google');

  String toPng(String name) => 'assets/images/$name.png';
}
