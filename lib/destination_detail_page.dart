import 'package:flutter/material.dart';
import '../models/destinationModels.dart';

class DestinationDetailPage extends StatelessWidget {
  final DestinationModel destination;
  const DestinationDetailPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destination.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                destination.imageUrl,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            _detailRow("Nama", destination.name),
            _detailRow("Kategori", destination.category),
            _detailRow("Lokasi", destination.location),
            _detailRow("Deskripsi", destination.description),
            _detailRow("Jam Buka", destination.openingHours),
            _detailRow("Info Tiket", destination.ticketInfo),
            _detailRow("Atraksi", destination.attraction),
            _detailRow("Referensi", destination.wikipediaUrl),
            const SizedBox(height: 16),
            
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Kembali ke Daftar Destinasi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _detailRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    ),
  );
}