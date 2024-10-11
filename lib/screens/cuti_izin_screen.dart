import 'package:flutter/material.dart';

class CutiIzinScreen extends StatefulWidget {
  @override
  _CutiIzinScreenState createState() => _CutiIzinScreenState();
}

class _CutiIzinScreenState extends State<CutiIzinScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _keteranganController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;

  void _submitForm() {
    if (_namaController.text.isNotEmpty && _keteranganController.text.isNotEmpty && _startDate != null && _endDate != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Pengajuan Cuti/Izin Berhasil!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Mohon lengkapi semua data!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengajuan Cuti/Izin'),
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(labelText: 'Nama Anda'),
            ),
            TextField(
              controller: _keteranganController,
              decoration: InputDecoration(labelText: 'Keterangan'),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(_startDate == null ? 'Mulai' : 'Mulai: ${_startDate!.toLocal()}'.split(' ')[0]),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null && picked != _startDate) {
                      setState(() {
                        _startDate = picked;
                      });
                    }
                  },
                  child: Text('Pilih Tanggal Mulai'),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(_endDate == null ? 'Selesai' : 'Selesai: ${_endDate!.toLocal()}'.split(' ')[0]),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null && picked != _endDate) {
                      setState(() {
                        _endDate = picked;
                      });
                    }
                  },
                  child: Text('Pilih Tanggal Selesai'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Ajukan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
