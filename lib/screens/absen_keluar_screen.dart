import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Plugin untuk menampilkan peta Google
import 'package:extroverse/screens/status_absen_keluar_screen.dart';

class AbsenKeluarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absen Keluar'),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Kembali ke halaman profil
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukan Nama Anda',
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
                    MaterialPageRoute(builder: (context) => StatusAbsenKeluarScreen()),
                  );
                },
                child: Text('Absen Keluar'),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
