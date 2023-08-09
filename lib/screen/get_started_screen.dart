import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';
import 'package:pengenalan_tanaman_herbal/widgets/navbar.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/gambar/background3.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Aplikasi Pengenalan Tanaman Hebral',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Cari tau manfaat dari tanaman herbal',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 55,
                  width: 220,
                  margin: const EdgeInsets.only(
                    top: 50,
                    bottom: 30,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavbarScreen(),
                        ),
                      );
                    },
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
