import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/screen/artikel_screen.dart';
import 'package:pengenalan_tanaman_herbal/screen/deteksi_screen.dart';
import 'package:pengenalan_tanaman_herbal/screen/home_screen.dart';
import 'package:pengenalan_tanaman_herbal/screen/tentang_screen.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const DeteksiScreen(),
    const ArtikelScreen(),
    const TentangScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: buttonColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
              size: 35,
            ),
            label: 'Deteksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              size: 35,
            ),
            label: 'Artikel',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              size: 35,
            ),
            label: 'Tentang',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kGreenColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        selectedFontSize: 20.0, // Ukuran huruf item yang dipilih
        unselectedFontSize: 18.0, // Ukuran huruf item yang tidak dipilih
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
