import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/colors.dart';
import 'package:flutter_whatsapp_ui/widgets/chat_list.dart';
import 'package:flutter_whatsapp_ui/widgets/contact_list.dart';
import 'package:flutter_whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:flutter_whatsapp_ui/widgets/web_profile_bar.dart';

import '../widgets/webSearchBar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          // Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList()),
                // Take message input box
              ],
            ),
          ),
        ],
      ),
    );
  }
}
