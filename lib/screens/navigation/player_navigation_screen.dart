import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../widgets/player_bottom_nav_bar.dart';

import '../player/player_home_screen.dart';
import '../player/player_profile_screen.dart';
import '../player/upload_videos_screen.dart';
import '../ai/ai_dashboard_screen.dart';
import '../settings/settings_screen.dart';

class PlayerNavigationScreen extends StatefulWidget {
  final String selectedSport;

  const PlayerNavigationScreen({
    super.key,
    required this.selectedSport,
  });

  @override
  State<PlayerNavigationScreen> createState() =>
      _PlayerNavigationScreenState();
}

class _PlayerNavigationScreenState extends State<PlayerNavigationScreen> {
  int currentIndex = 0;

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    // Order matches bottom nav: Home, AI, Upload, Profile, Settings
    pages = [
      PlayerHomeScreen(selectedSport: widget.selectedSport),
      const AiDashboardScreen(),
      UploadVideosScreen(selectedSport: widget.selectedSport),
      PlayerProfileScreen(selectedSport: widget.selectedSport),
      const SettingsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: PlayerBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
