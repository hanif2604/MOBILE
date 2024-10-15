import 'package:extroverse/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'absen_masuk_screen.dart';
import 'absen_keluar_screen.dart'; // Import untuk Absen Keluar
import 'cuti_izin_screen.dart';
import 'riwayat_absensi_screen.dart';

class BerandaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.grey[300],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())
              );
            },
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF001F54), // Navy Tua
              Color(0xFF003566), // Biru Sedikit Lebih Terang
              Color(0xFF006494), // Biru Sedang
              Color(0xFF669BBC), // Biru Muda
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // User Profile and Greeting Section
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              color: Color(0xFF001F54), // Navy Tua sesuai skema warna biru
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/icon/profil.png'), // Replace with actual image path
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Extroverse',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Text(
                        'Karyawan',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                      SizedBox(height: 8.0), // Memberikan sedikit jarak
                      Text(
                        'Selamat datang!',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        'Selamat beraktifitas!',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Main Menu Grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  children: [
                    // Absen Masuk
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AbsenMasukScreen()),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icon/check.png", width: 50),
                            SizedBox(height: 10),
                            Text("Absen Masuk", style: TextStyle(color: Color(0xFF001F54))), // Menggunakan warna biru tua
                          ],
                        ),
                      ),
                    ),

                    // Absen Keluar (Tambahan)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AbsenKeluarScreen()),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icon/bag.png", width: 50), // Ikon untuk Absen Keluar
                            SizedBox(height: 10),
                            Text("Absen Keluar", style: TextStyle(color: Color(0xFF003566))), // Warna biru sedikit lebih terang
                          ],
                        ),
                      ),
                    ),

                    // Pengajuan Absen
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CutiIzinScreen()),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icon/calender.png", width: 50),
                            SizedBox(height: 10),
                            Text("Izin/Cuti", style: TextStyle(color: Color(0xFF003566))), // Biru sedikit lebih terang
                          ],
                        ),
                      ),
                    ),

                    // Riwayat Absensi
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RiwayatAbsensiScreen()),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icon/riwayat.png", width: 50),
                            SizedBox(height: 10),
                            Text("Riwayat Absensi", style: TextStyle(color: Color(0xFF006494))), // Biru sedang
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
