import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => PopupMenuButton<String>(
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem<String>(
              value: "banned_countries",
              child: Text("Banned Countries"),
            ),
            const PopupMenuItem<String>(
              value: "saved_cards",
              child: Text("Saved Cards"),
            ),
          ];
        },
        onSelected: (String value) {
          if (value == "banned_countries") {
            // TODO: navigate to config page for banned countries
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => const Placeholder()),
            );
          } else if (value == "saved_cards") {
            // TODO: navigate to a page to view saved cards
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => const Placeholder()),
            );
          }
        },
      ),
    );
  }
}