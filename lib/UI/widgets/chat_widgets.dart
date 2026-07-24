import 'package:flutter/material.dart';

// ============================================================
// CHAT APP BAR TITLE
// ============================================================

class ChatAppBarTitle extends StatelessWidget {
  const ChatAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,

          decoration: BoxDecoration(
            color: const Color(0xFFE76F51),
            borderRadius: BorderRadius.circular(14),
          ),

          child: const Center(
            child: Icon(
              Icons.restaurant_rounded,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),

        const SizedBox(width: 12),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Dhanu's Kitchen",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 2),

            Text(
              "Customer Support",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

// ============================================================
// ONLINE STATUS
// ============================================================

class ChatOnlineStatus extends StatelessWidget {
  const ChatOnlineStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),

      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),

      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          Container(
            height: 9,
            width: 9,

            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 8),

          const Text(
            "We're online and ready to help",
            style: TextStyle(
              color: Color(0xFF2E7D32),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// DATE LABEL
// ============================================================

class ChatDateLabel extends StatelessWidget {
  final String text;

  const ChatDateLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),

        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// ============================================================
// RECEIVED MESSAGE
// ============================================================

class ReceivedMessage extends StatelessWidget {
  final String message;
  final String time;

  const ReceivedMessage({super.key, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,

      child: Container(
        constraints: const BoxConstraints(maxWidth: 310),

        margin: const EdgeInsets.only(bottom: 14),

        padding: const EdgeInsets.fromLTRB(16, 13, 16, 9),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(4),
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),

              blurRadius: 8,

              offset: const Offset(0, 3),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(message, style: const TextStyle(fontSize: 14, height: 1.4)),

            const SizedBox(height: 5),

            Text(
              time,

              style: const TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// SENT MESSAGE
// ============================================================

class SentMessage extends StatelessWidget {
  final String message;
  final String time;

  const SentMessage({super.key, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,

      child: Container(
        constraints: const BoxConstraints(maxWidth: 310),

        margin: const EdgeInsets.only(bottom: 14),

        padding: const EdgeInsets.fromLTRB(16, 13, 16, 9),

        decoration: const BoxDecoration(
          color: Color(0xFFE76F51),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(4),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Text(
              message,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              time,

              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.75),

                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// QUICK SUGGESTIONS
// ============================================================

class QuickSuggestions extends StatelessWidget {
  const QuickSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,

      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        scrollDirection: Axis.horizontal,

        children: [
          _SuggestionButton(text: "Today's Menu", onPressed: () {}),

          _SuggestionButton(text: "Bulk Orders", onPressed: () {}),

          _SuggestionButton(text: "Delivery", onPressed: () {}),

          _SuggestionButton(text: "Contact Us", onPressed: () {}),
        ],
      ),
    );
  }
}

// ============================================================
// SUGGESTION BUTTON
// ============================================================

class _SuggestionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _SuggestionButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),

      child: OutlinedButton(
        onPressed: onPressed,

        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFFE76F51),

          side: const BorderSide(color: Color(0xFFE76F51)),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        child: Text(text, style: const TextStyle(fontSize: 12)),
      ),
    );
  }
}

// ============================================================
// MESSAGE INPUT
// ============================================================

class MessageInput extends StatefulWidget {
  const MessageInput({super.key});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) {
      return;
    }

    _controller.clear();

    // Later, you can connect this to your chat system.
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,

      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),

        decoration: const BoxDecoration(
          color: Colors.white,

          border: Border(top: BorderSide(color: Color(0xFFEAEAEA))),
        ),

        child: Row(
          children: [
            IconButton(
              onPressed: () {},

              icon: const Icon(Icons.add_circle_outline_rounded),

              color: const Color(0xFFE76F51),
            ),

            Expanded(
              child: TextField(
                controller: _controller,

                textInputAction: TextInputAction.send,

                onSubmitted: (_) {
                  _sendMessage();
                },

                decoration: InputDecoration(
                  hintText: "Type a message...",

                  filled: true,

                  fillColor: const Color(0xFFF8F7F4),

                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),

                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 8),

            Container(
              height: 46,
              width: 46,

              decoration: const BoxDecoration(
                color: Color(0xFFE76F51),
                shape: BoxShape.circle,
              ),

              child: IconButton(
                onPressed: _sendMessage,

                icon: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
