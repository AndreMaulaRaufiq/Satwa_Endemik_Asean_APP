import 'package:flutter/material.dart';
import 'package:satwa_endemik_asean/models/satwa.dart';
import 'package:satwa_endemik_asean/pages/detail_page.dart';
import 'package:satwa_endemik_asean/theme.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Satwa items = satwaList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(satwa: items),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          items.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Text(
                        items.name,
                        style: mediumTextStyle.copyWith(fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        items.negara,
                        style: regularTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: satwaList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
      ),
    );
  }
}
