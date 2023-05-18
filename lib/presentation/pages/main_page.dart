import 'package:flutter/material.dart';
import 'package:messaging_app_material3/core/constants/app_assets.dart';
import 'package:messaging_app_material3/core/constants/app_colors.dart';
import 'package:messaging_app_material3/core/provider/main_provider.dart';
import 'package:messaging_app_material3/presentation/pages/settings.dart';
import 'package:provider/provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'chats.dart';
import 'contacts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var mainState = context.watch<MainAppState>();
    PageController pageController = PageController(initialPage: mainState.selectedIndex);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            ChatsPage(),
            ContactsPage(),
            SettingsPage(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: mainState.selectedIndex,
        onDestinationSelected: (value) {
          mainState.changePage(value);
          pageController.jumpToPage(value);
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(AppAssets.icons.home),
            selectedIcon: SvgPicture.asset(AppAssets.icons.homeFilled),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppAssets.icons.contacts),
            selectedIcon: SvgPicture.asset(AppAssets.icons.contactsFilled),
            label: 'Contacts',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppAssets.icons.settings),
            selectedIcon: SvgPicture.asset(AppAssets.icons.settingsFilled),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: mainState.selectedIndex == 2
          ? const SizedBox()
          : FloatingActionButton(
              onPressed: () {},
              child: mainState.selectedIndex == 0
                  ? SvgPicture.asset(AppAssets.icons.edit)
                  : SvgPicture.asset(AppAssets.icons.add),
            ),
    );
  }
}
