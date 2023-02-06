import 'package:flutter/material.dart';

import 'widgets/tabbed_card/tabbed_card.dart';
import 'widgets/tabbed_card/tabbed_card_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: TabbedCard(
          tabs: [
            TabbedCardItem(
              label: "First Tab",
              child: const Placeholder(
                color: Colors.blue,
              ),
            ),
            TabbedCardItem(
              label: 'Second Tab',
              child: const Placeholder(
                color: Colors.red,
              ),
            ),
            TabbedCardItem(
              label: "With a background color",
              options: TabbedCardItensOptions(
                tabColor: Colors.amber,
              ),
              child: const Placeholder(),
            ),
            TabbedCardItem(
              label: 'With an icon',
              icon: const Icon(Icons.dashboard),
              child: const Placeholder(
                color: Colors.red,
              ),
            ),
            TabbedCardItem(
              label: 'With an icon and custom LabelStyle',
              icon: const Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              options: TabbedCardItensOptions(
                  tabColor: Colors.black,
                  labelStyle: const TextStyle(color: Colors.white)),
              child: const Placeholder(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
