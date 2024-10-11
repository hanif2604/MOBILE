import 'package:extroverse/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'absen_masuk_screen.dart';
import 'absen_keluar_screen.dart';
import 'cuti_izin_screen.dart';
import 'riwayat_absensi_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
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
            colors: [Color(0xFFe6ccb2), Color(0xFF8b5e34)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AbsenMasukScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icon/masuk.png"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text("Absen Masuk", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => AbsenKeluarScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icon/keluar.png"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text("Absen Keluar", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => CutiIzinScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icon/calender.png"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text("Cuti/Izin", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => RiwayatAbsensiScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icon/riwayat.png"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text("Riwayat Absensi", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
