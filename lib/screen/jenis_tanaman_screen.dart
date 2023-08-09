import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/models/jenis_model.dart';
import 'package:pengenalan_tanaman_herbal/screen/detail_jenis_screen.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';
import 'package:pengenalan_tanaman_herbal/widgets/jenis_card.dart';

import '../service/home_service.dart';

class JenisTanamanScreen extends StatefulWidget {
  const JenisTanamanScreen({super.key});

  @override
  State<JenisTanamanScreen> createState() => _JenisTanamanScreenState();
}

class _JenisTanamanScreenState extends State<JenisTanamanScreen> {
  HomeService homeService = HomeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Jenis Tanaman Herbal',
                    style: greenTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                StreamBuilder<QuerySnapshot<Object?>>(
                  stream: homeService.streamJenis(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      var data = snapshot.data!.docs;
                      return ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final dataJenis =
                              data[index].data() as Map<String, dynamic>;
                          return JenisCard(
                            JenisModel(
                              id: dataJenis['id'],
                              nama: dataJenis['nama'],
                              gambar1: dataJenis['gambar1'],
                              gambar2: dataJenis['gambar2'],
                              gambar3: dataJenis['gambar3'],
                              penjelasan: dataJenis['penjelasan'],
                            ),
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailJenisScreen(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
