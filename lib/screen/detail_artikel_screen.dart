import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/service/artikel_service.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class DetailArtikelScreen extends StatelessWidget {
  final String idDoc;
  const DetailArtikelScreen({super.key, required this.idDoc});

  @override
  Widget build(BuildContext context) {
    ArtikelService artikelService = ArtikelService();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder<DocumentSnapshot<Object?>>(
                future: artikelService.getByIDArtikel(idDoc),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    final data = snapshot.data!.data() as Map<String, dynamic>;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          data['gambar'],
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['judul'],
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                data['deskripsi'].replaceAll("\\n", "\n"),
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
