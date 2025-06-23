import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.Primary,
        title: Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300', // Dummy user image
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        'Mr. John Doe',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(Icons.logout, color: Colors.red),
                    onPressed: () {
                      // TODO: Add logout logic
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Divider(height: 1),

              SettingsTile(
                icon: Icons.person_outline,
                title: 'User Profile',
                onTap: () {},
              ),
              const Divider(height: 1),
              SettingsTile(
                icon: Icons.lock_outline,
                title: 'Change Password',
                onTap: () {},
              ),
              const Divider(height: 1),
              SettingsTile(
                icon: Icons.location_on_outlined,
                title: 'Shipping address',
                onTap: () {},
              ),
              const Divider(height: 1),
              SettingsTile(
                icon: Icons.favorite_border,
                title: 'Wish List',
                onTap: () {},
              ),
              const Divider(height: 1),
              SettingsTile(
                icon: Icons.notifications_none,
                title: 'Push Notification',
                onTap: () {},
              ),
              const Divider(height: 1),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 4),
        child: Row(
          children: [
            Icon(icon, color: Palette.Primary),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  // color: Palette.Primary,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 15, color: Palette.Primary),
          ],
        ),
      ),
    );
  }
}
