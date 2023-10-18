import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';
import '../../common/constants/icons.dart';
import '../profile/profile_page.dart';
import 'dashboard_page.dart';

class MahasiswaPage extends StatefulWidget {
  const MahasiswaPage({super.key});

  @override
  State<MahasiswaPage> createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const DashboardPage(),
    const Center(
      child: Text('Schedule'),
    ),
    const ProfilePage(
      role: 'Mahasiswa',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorName.primary,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.chart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.profile),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
