import 'package:flutter/cupertino.dart';

// Cupertino SliverNavigationBar adapted for the existing HomeScreen context.
// Placed under test/ so it doesn't change the main Material app.

void main() => runApp(const CupertinoNavBarHomeApp());

class CupertinoNavBarHomeApp extends StatelessWidget {
  const CupertinoNavBarHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoHomeScreen(),
    );
  }
}

class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            leading: const Icon(CupertinoIcons.location),
            largeTitle: const Text('Cuacaku'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(CupertinoIcons.refresh),
                ),
                Icon(CupertinoIcons.search),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Cuaca akan tampil di sini', textAlign: TextAlign.center),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute<Widget>(
                        builder: (BuildContext context) => const NextPage(),
                      ),
                    );
                  },
                  child: const Text('Buka Halaman Berikutnya'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemYellow,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            middle: const Text('Detail Cuaca'),
            largeTitle: const Text('Ringkasan'),
          ),
          const SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Geser ke atas untuk mengecilkan navbar', textAlign: TextAlign.center),
                Text('Gunakan tombol back untuk kembali', textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

