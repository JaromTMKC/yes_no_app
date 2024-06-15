import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const ChatScreen({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.flim11-1.fna.fbcdn.net/v/t39.30808-6/423715916_1133792807621242_2558062110682473631_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFhcbPH4tNgdZ8YJJwbgCdBhJ2eZGwI9dCEnZ5kbAj10MTeiJUBdh8tHOpPivvm2DAybdzbIb1uFqBAnh6n1bDy&_nc_ohc=zZVh5tecjToQ7kNvgHxN4Ep&_nc_ht=scontent.flim11-1.fna&oh=00_AYBWI8toVscrkdtmmPuhFNMG77eXl_pRLZaUXcyFXlm4rA&oe=6672F3D9'),
          ),
        ),
        title: const Text('Yo mesmeto 🦍'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBuble()
                      : const MyMessageBuble();
                },
              ),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
