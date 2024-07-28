import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xff040404),
            title: const Text(
              'Kaaba',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffeec94a)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image:
                            NetworkImage('https://i.redd.it/dxecgvs9se231.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'The Ka’aba (“cube”) is the most sacred site in Islam, known as the sacred bayt Allah (House of God). It is located at the heart of the sacred mosque Masjid al-Haram in Mecca, Saudi Arabia.',
                  style: TextStyle(color: Color(0xffeec94a)),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Video',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Stats',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _showAboutDialog(context),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 1, 60, 3),
          ),
          child: const Text(
            'Show About Dialog',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
