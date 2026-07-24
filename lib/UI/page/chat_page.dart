import 'package:flutter/material.dart';

import '../widgets/chat_widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F7F4),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F7F4),
        elevation: 0,

        title: const ChatAppBarTitle(),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),

      body: Column(
        children: [
          // Online status
          const ChatOnlineStatus(),

          const SizedBox(height: 12),

          // Chat messages
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),

              children: const [
                ChatDateLabel(text: "Today"),

                SizedBox(height: 20),

                ReceivedMessage(
                  message: "Hello 👋 Welcome to Dhanu's Budget Menu!",
                  time: "10:30 AM",
                ),

                ReceivedMessage(
                  message: "How can we help you today?",
                  time: "10:30 AM",
                ),

                SentMessage(
                  message: "I would like to know about today's menu.",
                  time: "10:32 AM",
                ),

                ReceivedMessage(
                  message:
                      "Sure! You can check our Menu section to see today's delicious homemade meals 🍛",
                  time: "10:32 AM",
                ),

                SentMessage(
                  message: "I am also interested in placing a bulk order.",
                  time: "10:35 AM",
                ),

                ReceivedMessage(
                  message:
                      "Of course! We also accept corporate and bulk orders. Our team will be happy to help you 😊",
                  time: "10:35 AM",
                ),
              ],
            ),
          ),

          // Quick suggestions
          const QuickSuggestions(),

          // Message input
          const MessageInput(),
        ],
      ),
    );
  }
}
