import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';
import '../../core/models/user_model.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 18,
      onTap: () {},
      leading: CircleAvatar(
        radius: 28,
        child: Image.asset(user.image),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: AppTextStyles.title,
          ),
          Text(
            user.message,
            style: AppTextStyles.description,
          ),
        ],
      ),
      trailing: Column(
        children: [
          Text(
            user.time,
            style: AppTextStyles.description.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
