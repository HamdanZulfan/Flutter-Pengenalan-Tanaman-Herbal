import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class TentangScreen extends StatefulWidget {
  const TentangScreen({super.key});

  @override
  State<TentangScreen> createState() => _TentangScreenState();
}

class _TentangScreenState extends State<TentangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/gambar/logo.png',
                      ),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        'Aplikasi Pengenalan Tanaman Herbal di dibuat untuk memberikan informasi mengenai tanaman herbal, manfaat tanaman herbal serta memberikan kemudahan kepada pengguna untuk mendeteksi tanaman herbal yang dibangun dengan menggunakan\nalat',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    children: [
                      TextSpan(
                        text: 'Teachable Machine',
                        style: blackTextStyle.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Dibuat Oleh:\n Hamdan Zulfan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
