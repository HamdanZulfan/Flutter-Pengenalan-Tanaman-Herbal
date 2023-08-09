import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class CaraPenggunaanScreen extends StatelessWidget {
  const CaraPenggunaanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Cara Penggunaan Aplikasi',
                  style: greenTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Cara Kerja Aplikasi',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: extraBold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Aplikasi ini beroperasi dengan mengambil gambar atau foto tanaman herbal melalui kamera atau mengambil gambar dari galeri smartphone. Setelah itu, aplikasi akan melakukan identifikasi jenis tanaman herbal berdasarkan gambar yang diambil dengan menggunakan teachable machine',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Cara Penggunaan Aplikasi',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: extraBold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '1. Buka Aplikasi Pengenalan Tanaman Herbal',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2. Tekan Tombol Selanjutnya',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  // Image.asset(
                  //   'assets/gambar/button_selanjutnya.jpg',
                  //   height: 50,
                  //   width: 200,
                  //   fit: BoxFit.fill,
                  // ),
                  IgnorePointer(
                    ignoring: true,
                    child: SizedBox(
                      height: 55,
                      width: 220,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: kGreenColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        child: Text(
                          'Selanjutnya',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3. Tekan Tombol Cara Penggunaan Aplikasi Untuk Melihat Secara Detail Langkah-Langkah Dalam Menggunakan Aplikasi Pengenalan Tanaman Herbal.',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  // Image.asset(
                  //   'assets/gambar/button_carapenggunaan.jpg',
                  //   height: 50,
                  //   width: 200,
                  //   fit: BoxFit.fill,
                  // ),
                  IgnorePointer(
                    ignoring: true,
                    child: SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: kGreenColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
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
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4. Pilih Menu',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 50,
                            color: kGreenColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Beranda',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Pada Menu Beranda terdapat 2 tombol yaitu tombol cara penggunaan aplikasi dan tombol jenis tanaman herbal yang terdapat infomasi mengenai masing-masing jenis tanaman herbal.',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera,
                            size: 50,
                            color: kGreenColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Deteksi',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Pada Menu Deteksi digunakan untuk mendeteksi jenis tanaman herbal menggunakan kamera dengan cara mengambil citra atau memasukan gambar dari galeri pada objek yang akan di deteksi. Akan muncul hasil deteksi dari objek tersebut.',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.article,
                            size: 50,
                            color: kGreenColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Artikel',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Pada Menu Artikel terdapat informasi beberapa cara pengolahan tanaman herbal untuk kesehatan tubuh.',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            size: 50,
                            color: kGreenColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Tentang',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Pada Menu Tentang terdapat informasi pembuat aplikasi.',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '5. Tekan tombol "Home" (Bulat) yang berada di tengah bawah pada smarpthone masing-masing. ',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
