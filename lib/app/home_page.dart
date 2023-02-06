import 'package:flutter/material.dart';
import 'package:personal_widgets/app/widgets/tabbed_card/tabbed_card.dart';
import 'package:personal_widgets/app/widgets/tabbed_card/tabbed_card_item.dart';

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
              label: "label",
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
            TabbedCardItem(
              label: 'label 2',
              child: Placeholder(
                color: Colors.red,
              ),
            ),
            TabbedCardItem(
              label: "label 3",
              options: TabbedCardItensOptions(
                tabColor: Colors.amber,
              ),
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
