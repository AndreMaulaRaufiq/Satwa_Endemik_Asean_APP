import 'package:flutter/material.dart';
import 'package:satwa_endemik_asean/theme.dart';
import 'package:satwa_endemik_asean/widgets/card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Satwa Endemik ASEAN',
                style: boldTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(
              child: ItemCard(),
            ),
          ],
        ),
      ),
    );
  }
}
