import 'package:flutter/material.dart'; 

class RiwayatAbsensiScreen extends StatelessWidget {
  final List<Map<String, String>> absensiData = [
    {
      'nama': 'Hanif',
      'alamat': 'Sindang, Indramayu',
      'keterangan': 'Hadir',
      'inisial': 'H',
      'color': 'green',
    },
    {
      'nama': 'Azizah',
      'alamat': 'Jatibarang, Indramayu',
      'keterangan': 'Cuti',
      'inisial': 'A',
      'color': 'blue',
    },
    {
      'nama': 'Windini',
      'alamat': 'Lohbener, Indramayu',
      'keterangan': 'Izin',
      'inisial': 'W',
      'color': 'yellow',
    },
  ];

  Color _getColor(String colorName) {
    switch (colorName) {
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Absensi'),
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
        child: ListView.builder(
          itemCount: absensiData.length,
          itemBuilder: (context, index) {
            final data = absensiData[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _getColor(data['color']!),
                    child: Text(
                      data['inisial']!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama      : ${data['nama']}'),
                      Text('Alamat    : ${data['alamat']}'),
                      Text('Keterangan: ${data['keterangan']}'),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
