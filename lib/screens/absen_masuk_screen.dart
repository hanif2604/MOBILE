import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:extroverse/screens/status_absen_masuk_screen.dart';

class AbsenMasukScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absen Masuk'),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman profil
          },
        ),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukan Nama Anda',
                labelStyle: TextStyle(
                color: Colors.white, // Atur warna teks label di sini
                fontSize: 16, // Anda juga bisa menyesuaikan ukuran font, jika perlu
               ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Tersusuri di sini',
                      labelStyle: TextStyle(
                      color: Colors.white, // Atur warna teks label di sini
                      fontSize: 16, // Anda juga bisa menyesuaikan ukuran font, jika perlu
                       ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Aksi untuk cari alamat
                  },
                  child: Text('Cari Alamat'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(-6.3264, 108.3198), // Koordinat default (Indramayu)
                  zoom: 14.0,
                ),
                myLocationEnabled: true,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatusAbsenMasukScreen()),
                  );
                },
                child: Text('Absen Masuk'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
