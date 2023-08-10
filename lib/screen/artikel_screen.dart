import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/models/artikel_model.dart';
import 'package:pengenalan_tanaman_herbal/screen/detail_artikel_screen.dart';
import 'package:pengenalan_tanaman_herbal/service/artikel_service.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';
import 'package:pengenalan_tanaman_herbal/widgets/artikel_card.dart';

class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ArtikelService artikelService = ArtikelService();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kGreenBold,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Artikel',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot<Object?>>(
              stream: artikelService.streamArtikel(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  var data = snapshot.data!.docs;
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final dataArtikel =
                          data[index].data() as Map<String, dynamic>;
                      return ArtikelCard(
                        ArtikelModel(
                          id: dataArtikel['id'],
                          judul: dataArtikel['judul'],
                          deskripsi: dataArtikel['deskripsi'],
                          gambar: dataArtikel['gambar'],
                        ),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailArtikelScreen(
                                idDoc: data[index].id,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
