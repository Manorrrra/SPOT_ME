import 'package:flutter/material.dart';

import '../../mock_players.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../../widgets/custom_card.dart';
import 'player_cv_screen.dart';

class RecommendedPlayersScreen extends StatelessWidget {
  final String selectedSport;
  final bool isFromDashboard;

  const RecommendedPlayersScreen({
    super.key,
    this.selectedSport = "Football",
    this.isFromDashboard = false,
  });

  @override
  Widget build(BuildContext context) {
    final players = MockPlayers.bySport(selectedSport)
      ..sort((a, b) => b.score.compareTo(a.score));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: isFromDashboard,
        backgroundColor: AppColors.card,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.white), // for back arrow color 
        centerTitle: true,
        title: Text(
          "Recommended Players",
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Top AI Recommendations",
            style: AppTextStyles.heading1,
          ),
          const SizedBox(height: 8),
          Text(
            "Highest-rated $selectedSport players recommended by AI based on performance.",
            style: AppTextStyles.body.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 25),
          if (players.isEmpty)
            Text(
              "No $selectedSport players found.",
              style: AppTextStyles.body.copyWith(color: Colors.white70),
            )
          else
            ...players.map(
              (player) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomCard(
                  title: player.name,
                  subtitle:
                      "${player.sport} • ${player.position} • AI Score: ${player.score}",
                  icon: Icons.star,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const PlayerCvScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
