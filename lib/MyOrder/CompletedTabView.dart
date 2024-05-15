import 'package:flutter/material.dart';
import 'package:trandtribe/Card/CompletedCard.dart';

class CompletedTabView extends StatelessWidget {
  const CompletedTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [CompletedCard()],
        ),
      ),
    );
  }
}