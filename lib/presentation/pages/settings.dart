import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_text_styles.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static List<String> titles = <String>[
    'Notifications',
    'Appereance',
    'Privacy',
    'Storage & Data',
    'About',
  ];

  static List<String> icons = <String>[
    AppAssets.icons.notifications,
    AppAssets.icons.appereance,
    AppAssets.icons.privacy,
    AppAssets.icons.storage,
    AppAssets.icons.about,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAssets.icons.search,
                  colorFilter: AppColors.iconFilter,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAssets.icons.more,
                  colorFilter: AppColors.iconFilter,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Settings',
            style: AppTextStyles.pageTitle,
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 16,
          ),
          leading: CircleAvatar(
            radius: 28,
            child: Image.asset(AppAssets.images.user7Photo),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daniel',
                style: AppTextStyles.title,
              ),
              Text(
                '+14844578842',
                style: AppTextStyles.description,
              ),
            ],
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: AppTextStyles.button,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 16,
          ),
          child: Text(
            'General',
            style: AppTextStyles.button.copyWith(color: AppColors.primary),
          ),
        ),
        ...List.generate(
          5,
          (index) => ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 2,
            ),
            onTap: () {},
            leading: SvgPicture.asset(
              icons[index],
              colorFilter: AppColors.settingsIconFilter,
            ),
            title: Text(
              titles[index],
              style: AppTextStyles.title,
            ),
          ),
        )
      ],
    );
  }
}
