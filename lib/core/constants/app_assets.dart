abstract class AppAssets {
  AppAssets._();

  static AppIcons get icons => AppIcons();

  static AppImages get images => AppImages();
}

abstract class AssetsFolder {
  final String basePath;

  AssetsFolder(this.basePath);
}

class AppIcons extends AssetsFolder {
  AppIcons() : super('assets/icons');

  String get about => '$basePath/ic-about.svg';
  String get addImage => '$basePath/ic-add-image.svg';
  String get add => '$basePath/ic-add.svg';
  String get appereance => '$basePath/ic-appearance.svg';
  String get arrowUp => '$basePath/ic-arrow-up.svg';
  String get audio => '$basePath/ic-audio.svg';
  String get back => '$basePath/ic-back.svg';
  String get call => '$basePath/ic-call.svg';
  String get camera => '$basePath/ic-camera.svg';
  String get delete => '$basePath/ic-delete.svg';
  String get download => '$basePath/ic-download.svg';
  String get edit => '$basePath/ic-edit.svg';
  String get image => '$basePath/ic-image.svg';
  String get location => '$basePath/ic-location.svg';
  String get media => '$basePath/ic-media.svg';
  String get more => '$basePath/ic-more.svg';
  String get notifications => '$basePath/ic-notifications.svg';
  String get person => '$basePath/ic-person.svg';
  String get play => '$basePath/ic-play.svg';
  String get privacy => '$basePath/ic-privacy.svg';
  String get reply => '$basePath/ic-reply.svg';
  String get search => '$basePath/ic-search.svg';
  String get storage => '$basePath/ic-storage.svg';
  String get video => '$basePath/ic-video.svg';
  String get website => '$basePath/ic-website.svg';

  String get home => '$basePath/ic-home.svg';
  String get homeFilled => '$basePath/ic-home-filled.svg';
  String get contacts => '$basePath/ic-contacts.svg';
  String get contactsFilled => '$basePath/ic-contacts-filled.svg';
  String get settings => '$basePath/ic-settings.svg';
  String get settingsFilled => '$basePath/ic-settings-filled.svg';
  // Navigation Bar Icons
}

class AppImages extends AssetsFolder {
  AppImages() : super('assets/images');

  String get user1Photo => '$basePath/user-1.png';
  String get user2Photo => '$basePath/user-2.png';
  String get user3Photo => '$basePath/user-3.png';
  String get user4Photo => '$basePath/user-4.png';
  String get user5Photo => '$basePath/user-5.png';
  String get user6Photo => '$basePath/user-6.png';
  String get user7Photo => '$basePath/user-7.png';
  String get user8Photo => '$basePath/user-8.png';
  String get user9Photo => '$basePath/user-9.png';
  String get user10Photo => '$basePath/user-10.png';
  String get user11Photo => '$basePath/user-11.png';
  // User Photos
}
