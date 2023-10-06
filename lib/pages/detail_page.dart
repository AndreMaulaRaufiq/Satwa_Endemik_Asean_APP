import 'package:flutter/material.dart';
import 'package:satwa_endemik_asean/models/satwa.dart';
import 'package:satwa_endemik_asean/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailPage extends StatelessWidget {
  final Satwa satwa;
  const DetailPage({super.key, required this.satwa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              satwa.imageAsset,
              height: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 375,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          satwa.name,
                          style: boldTextStyle.copyWith(
                            fontSize: 32,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Negara Asal', style: mediumTextStyle),
                                const SizedBox(height: 8.0),
                                Text(
                                  satwa.negara,
                                  style: mediumTextStyle.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('Populasi', style: mediumTextStyle),
                                const SizedBox(height: 8.0),
                                Text(
                                  satwa.populasi,
                                  style: mediumTextStyle.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('Kelompok', style: mediumTextStyle),
                                const SizedBox(height: 8.0),
                                Text(
                                  satwa.makanan,
                                  style: mediumTextStyle.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Deskripsi',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          satwa.deskripsi,
                          style: descTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,)
                  ),
                  const FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        if (isFavorite) {
          Fluttertoast.showToast(
            msg: "Satwa ditambahkan ke favorit",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else {
          Fluttertoast.showToast(
            msg: "Satwa dihapus dari favorit",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}