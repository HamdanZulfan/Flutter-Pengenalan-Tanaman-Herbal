import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/service/home_service.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class DetailJenisScreen extends StatelessWidget {
  final String idDoc;
  const DetailJenisScreen({super.key, required this.idDoc});

  @override
  Widget build(BuildContext context) {
    HomeService homeService = HomeService();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FutureBuilder<DocumentSnapshot<Object?>>(
                  future: homeService.getByIDJenis(idDoc),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      final data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 300.0,
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                              initialPage: 2,
                              autoPlay: true,
                            ),
                            items: [
                              data['gambar1']!,
                              data['gambar2']!,
                              data['gambar3']!,
                            ].map((i) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(i),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            data['nama'],
                            style: blackTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            data['penjelasan'].replaceAll("\\n", "\n"),
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 10,
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
      ),
    );
  }
}
