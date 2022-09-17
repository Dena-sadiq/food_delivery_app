import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(
      helpText: "What do you what to eat?",
      prefixIcon: const Icon(
        Icons.search,
        size: 28.0,
      ),
      suffixIcon: const Icon(
        Icons.close,
        size: 25.0,
      ),
      color: const Color(0xFFFFF7EF),
      width: 375,
      textController: textController,
      onSuffixTap: () {
        setState(() {
          textController.clear();
        });
      },
    );
  }
}