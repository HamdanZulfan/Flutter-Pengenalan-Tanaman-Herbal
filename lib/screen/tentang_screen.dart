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
                Text(
                  'Aplikasi ini dibuat untuk memberikan\n informasi mengenai tanaman herbal\n serta memberi kemudahan kepada pengguna dalam mendeteksi dan\nmanfaat dari tanaman herbal',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Dibuat Oleh:\n Hamdan Zulfan\n 52419710',
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
