import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text("AI Coach"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.card,
        foregroundColor: AppColors.white,
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [

                Align(
                  alignment: Alignment.centerLeft,
                  child: _Message(
                    text:
                        "Hello! I'm your AI Coach. How can I help today?",
                    isAi: true,
                  ),
                ),

                SizedBox(height: 15),

                Align(
                  alignment: Alignment.centerRight,
                  child: _Message(
                    text:
                        "How can I improve my speed?",
                    isAi: false,
                  ),
                ),

                SizedBox(height: 15),

                Align(
                  alignment: Alignment.centerLeft,
                  child: _Message(
                    text:
                        "Practice sprint intervals and agility drills 3 times a week.",
                    isAi: true,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ask AI Coach...",
                      filled: true,
                      fillColor: AppColors.card,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                CircleAvatar(
                  backgroundColor: AppColors.blue,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Message extends StatelessWidget {
  final String text;
  final bool isAi;

  const _Message({
    required this.text,
    required this.isAi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      constraints: const BoxConstraints(
        maxWidth: 270,
      ),
      decoration: BoxDecoration(
        color:
            isAi ? AppColors.card : AppColors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(text),
    );
  }
}