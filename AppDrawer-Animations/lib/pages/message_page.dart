import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  final List<String> messages = const [
    "Hello!",
    "How are you?",
    "Flutter is awesome",
    "Check this animation",
    "Message 5",
    "Message 6",
    "Message 7",
    "Message 8",
    "Message 9",
    "Message 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Messages")),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 50, end: 0), // slide from bottom
            duration: Duration(milliseconds: 300 + index * 100),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, value),
                child: Opacity(
                  opacity: 1 - (value / 50), // fade in as it slides
                  child: child,
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: const Icon(Icons.message),
                title: Text(messages[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
