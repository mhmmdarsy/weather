import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuacaku'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.location_on_sharp),
          tooltip: 'Lokasi Saya',
          onPressed: () {
            // TODO: Handle current location action
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Muat Ulang',
            onPressed: () {
              // TODO: Handle refresh action
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Cari Kota',
            onPressed: () {
              // TODO: Handle search action
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Konten cuaca akan tampil di sini'),
      ),
    );
  }
}

