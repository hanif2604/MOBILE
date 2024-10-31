import 'package:flutter/material.dart';
import 'detail_notification.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300], // Set the AppBar background color to green
        elevation: 0,
        title: Text(
          'Notifikasi Cuti/Izin',
          style: TextStyle(color: const Color.fromARGB(255, 39, 39, 39)), // Set the title color to white for contrast
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 6, 6, 6)), // Change back icon color to white
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF001F54),
              Color(0xFF003566),
              Color(0xFF006494),
              Color(0xFF669BBC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 1,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      'E',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    'Extrovers',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Persetujuan Permohonan Cuti Hi Agus Sedih,', 
                    style: TextStyle(color: Colors.black54),
                  ),
                  onTap: () {
                    // Navigate to DetailNotification
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailNotification()),
                    );
                  },
                ),
              ),
              // Footer removed
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationScreen(),
  ));
}
