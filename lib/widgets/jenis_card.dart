import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/models/jenis_model.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class JenisCard extends StatelessWidget {
  final Function() onPressed;
  final JenisModel jenis;
  const JenisCard(this.jenis, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    jenis.gambar1,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jenis.nama,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    jenis.penjelasan,
                    style: greyTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
