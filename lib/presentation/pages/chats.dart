import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_material3/core/constants/app_assets.dart';
import 'package:messaging_app_material3/core/data/user_data.dart';
import 'package:messaging_app_material3/presentation/widgets/user_message.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
          allUsers.length,
          (index) => UserMessage(
            user: allUsers[index],
          ),
        ),
      ],
    );
  }
}
