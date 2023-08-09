import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/screen/cara_penggunaan_screen.dart';
import 'package:pengenalan_tanaman_herbal/screen/jenis_tanaman_screen.dart';
import 'package:pengenalan_tanaman_herbal/service/home_service.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeService homeService = HomeService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tanaman Herbal',
                style: blackTextStyle.copyWith(
                  fontSize: 26,
                  fontWeight: extraBold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Ketahui Lebih Banyak Manfaat\ndari Tanaman Herbal',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
              Image.asset(
                'assets/gambar/logofix.png',
                height: 350,
                width: 350,
              ),
              // Center(
              //   child: Container(
              //     width: 400,
              //     height: 400,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage('assets/gambar/logofix.png'),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CaraPenggunaanScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kGreenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Cara Penggunaan Aplikasi',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JenisTanamanScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kGreenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Jenis Tanaman Herbal',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // SizedBox(
              //   height: 55,
              //   width: MediaQuery.of(context).size.width,
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const DeteksiScreen(),
              //         ),
              //       );
              //     },
              //     style: TextButton.styleFrom(
              //       backgroundColor: kGreenColor,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     child: Text(
              //       'Deteksi Gambar Tanaman Herbal',
              //       style: whiteTextStyle.copyWith(
              //         fontSize: 16,
              //         fontWeight: semiBold,
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 30,
              // ),
              // Text(
              //   'Jenis Tanaman Herbal',
              //   style: blackTextStyle.copyWith(
              //     fontSize: 24,
              //     fontWeight: bold,
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // StreamBuilder<QuerySnapshot<Object?>>(
              //   stream: homeService.streamJenis(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.active) {
              //       var data = snapshot.data!.docs;
              //       return ListView.builder(
              //         shrinkWrap: true,
              //         primary: false,
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           final dataJenis =
              //               data[index].data() as Map<String, dynamic>;
              //           return JenisCard(
              //             JenisModel(
              //               id: dataJenis['id'],
              //               nama: dataJenis['nama'],
              //               gambar1: dataJenis['gambar1'],
              //               gambar2: dataJenis['gambar2'],
              //               gambar3: dataJenis['gambar3'],
              //               penjelasan: dataJenis['penjelasan'],
              //             ),
              //             () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => DetailJenisScreen(
              //                     idDoc: data[index].id,
              //                   ),
              //                 ),
              //               );
              //             },
              //           );
              //         },
              //       );
              //     } else {
              //       return const Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     }
              //   },
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
