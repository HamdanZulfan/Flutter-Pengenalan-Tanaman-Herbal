import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';
import 'package:tflite/tflite.dart';

class DeteksiScreen extends StatefulWidget {
  const DeteksiScreen({super.key});

  @override
  State<DeteksiScreen> createState() => _DeteksiScreenState();
}

class _DeteksiScreenState extends State<DeteksiScreen> {
  bool _isLoading = true;
  File? _image;
  List? _output;
  final imagepicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
  }

  detectimage(File image) async {
    var prediction = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.6,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _output = prediction;
      _isLoading = false;
    });
  }

  loadmodel() async {
    await Tflite.loadModel(
        model: 'assets/ml/model_unquant.tflite',
        labels: 'assets/ml/labels.txt');
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickimage_gallery() async {
    var image = await imagepicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    detectimage(_image!);
  }

  pickimage_camera() async {
    var image = await imagepicker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    detectimage(_image!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Masukan Gambar Atau Foto Untuk Mengetahui Jenis Tumbuhan Herbal',
                        style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: _isLoading
                      ? Column(
                          children: [
                            Image.asset(
                              'assets/gambar/no_photos.png',
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Gambar Belum Dimasukan',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            SizedBox(
                              height: 250,
                              child: Image.file(
                                _image!,
                                fit: BoxFit.cover,
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            _output != null
                                ? Text(
                                    (_output![0]['label'])
                                        .toString()
                                        .substring(2),
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: medium,
                                    ),
                                  )
                                : Container(),
                            const SizedBox(
                              height: 15,
                            ),
                            _output != null
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Akurasi Gambar : ${_output![0]['confidence']}',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '*Keterangan',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Nilai akurasi yang paling optimal adalah 1.0.',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ],
                                  )
                                : const Text('')
                          ],
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  pickimage_camera();
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/gambar/camera.png',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Kamera',
                                      style: blackTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  pickimage_gallery();
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/gambar/gallery.png',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Galeri',
                                      style: blackTextStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Masukan Gambar',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
