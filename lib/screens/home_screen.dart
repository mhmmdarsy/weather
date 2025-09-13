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
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.location_on_sharp,
            color: Colors.black
            ),
          tooltip: 'Lokasi Saya',
          onPressed: () {
            // TODO: Handle location action
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.black
              ),
            tooltip: 'Muat Ulang',
            onPressed: () {
              // TODO: Handle refresh action
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black
              ),
            tooltip: 'Cari Kota',
            onPressed: () {
              // TODO: Handle search action
            },
          ),
        ],
      ),

      backgroundColor: Colors.grey,

      body: Center(
        child: Column(
          children: [
            Image.asset("lib/assets/partly-cloudy.png"),
          ],
        ),
      ),

    );
  }
}