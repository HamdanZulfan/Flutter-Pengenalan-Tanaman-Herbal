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
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kGreenBold,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Cara Pengunaan Aplikasi',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 20,
                      ),
                    ),
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
              RichText(
                text: TextSpan(
                  text:
                      'Aplikasi beroperasi dengan mengambil gambar atau foto tanaman herbal melalui kamera atau mengambil gambar dari galeri smartphone. Setelah itu, aplikasi akan melakukan deteksi jenis tanaman herbal berdasarkan gambar yang diambil dengan menggunakan ',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                  children: [
                    TextSpan(
                      text: 'teachable machine',
                      style: blackTextStyle.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                    ),
                  ],
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
                height: 25,
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
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3. Tekan Tombol Cara Penggunaan Aplikasi untuk melihat secara detail langkah-langkah dalam menggunakan Aplikasi Pengenalan Tanaman Herbal',
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
                height: 25,
              ),
              Text(
                '4. Terdapat 4 menu pilihan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
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
                'Pada Menu Deteksi digunakan untuk mendeteksi jenis tanaman herbal menggunakan kamera atau pilih gambar dari galeri yang akan diidentifikasi.',
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
                height: 25,
              ),
              Text(
                '5. Tekan tombol "Back Button" (<) yang berada di kanan bawah smartphone untuk kehalaman sebelumnya',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                '6. Tekan Tombol Jenis Tanaman Herbal untuk menampilkan jenis-jenis tanaman herbal',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
              ),
              IgnorePointer(
                ignoring: true,
                child: SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: kGreenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
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
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                '7. Tekan tombol "Home" (Bulat) yang berada di tengah bawah smartphone untuk keluar aplikasi',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
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
