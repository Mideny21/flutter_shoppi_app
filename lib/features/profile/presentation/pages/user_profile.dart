import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/core/common/widgets/custom_app_bar.dart';
import 'package:shoppi/core/common/widgets/widget.dart';

@RoutePage()
class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'User profile', showBackButton: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Profile Picture with camera icon
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=3',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.camera_alt, size: 20),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              InputFields(
                controller: emailcontroller,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
                hintText: 'Enter your email',
                title: 'Email',
              ),
              const SizedBox(height: 16),

              InputFields(
                controller: emailcontroller,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
                hintText: 'Enter your email',
                title: 'Email',
              ),
              const SizedBox(height: 16),
              InputFields(
                controller: emailcontroller,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
                hintText: 'Enter your email',
                title: 'Email',
              ),
              const SizedBox(height: 16),

              InputFields(
                controller: emailcontroller,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
                hintText: 'Enter your email',
                title: 'Email',
              ),
              const SizedBox(height: 30),

              CustomNeumorphicButton(onTap: () {}, text: 'Update'),
            ],
          ),
        ),
      ),
    );
  }
}
