import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_material3/core/provider/main_provider.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    var allContacts = context.read<MainAppState>().sortedContacts;
    var letterIndex = context.read<MainAppState>().indexes;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.icons.more,
                colorFilter: AppColors.iconFilter,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Contacts',
            style: AppTextStyles.pageTitle,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: SearchBar(
            hintText: 'Search',
            leading: SvgPicture.asset(AppAssets.icons.search),
          ),
        ),
        ...List.generate(
          allContacts.length,
          (index) => Row(
            children: [
              Container(
                width: 12,
                margin: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                child: Text(
                  letterIndex.contains(index) ? allContacts[index].name[0] : '',
                  style: AppTextStyles.letter,
                ),
              ),
              Expanded(
                child: ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.fromLTRB(8, 4, 16, 4),
                  leading: CircleAvatar(
                    radius: 20,
                    child: Image.asset(allContacts[index].image),
                  ),
                  title: Text(allContacts[index].name),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
