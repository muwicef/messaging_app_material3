import 'package:messaging_app_material3/core/constants/app_assets.dart';
import 'package:messaging_app_material3/core/models/user_model.dart';

final User user_1 = User(
  'Bryan',
  'What do you think?',
  '4:30 PM',
  2,
  AppAssets.images.user1Photo,
);

final User user_2 = User(
  'Kari',
  'Looks great!',
  '4:23 PM',
  1,
  AppAssets.images.user2Photo,
);
final User user_3 = User(
  'Diana',
  'Lunch on Monday?',
  '4:12 PM',
  0,
  AppAssets.images.user3Photo,
);
final User user_4 = User(
  'Ben',
  'You sent a photo.',
  '3:58 PM',
  0,
  AppAssets.images.user4Photo,
);
final User user_5 = User(
  'Naomi',
  'Naomi sent a photo.',
  '3:31 PM',
  0,
  AppAssets.images.user5Photo,
);
final User user_6 = User(
  'Alicia',
  'See you at 8',
  '3:30 PM',
  0,
  AppAssets.images.user6Photo,
);

final allUsers = [user_1, user_2, user_3, user_4, user_5, user_6];
