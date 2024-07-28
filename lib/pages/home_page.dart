import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool toogle = true;

class _HomePageState extends State<HomePage> {
  void _showAboutDialog(
      BuildContext context, String title, String image, String description) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 13, 11, 11),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color(0xffeec94a)),
            ),
            content: toogle
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(color: Color(0xffeec94a)),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: const Text(
                                'Video',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  toogle == !toogle;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        width: 1, color: Colors.white)),
                                child: const Text(
                                  'Stats',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text('Built by: \n Ibrahim and his son Ismail'),
                          Text('')
                        ],
                      ),
                    ],
                  ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/background/background.png',
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => _showAboutDialog(
                    context,
                    'Ihram for Umrah',
                    'https://cdni.iconscout.com/illustration/premium/thumb/muslim-family-wears-ihram-clothes-performing-hajj-8919398-7251141.png',
                    'Ihram (Arabic: إحرام) refers to the sacred state a pilgrim must enter before carrying out the rites of Hajj and Umrah. '),
                child: SizedBox(
                  width: 100,
                  child: Image.asset('/images/clothes.png'),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              SizedBox(
                width: 100,
                child: Image.asset('/images/mosig.png'),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () => _showAboutDialog(
                    context,
                    'Kaaba',
                    'https://i.redd.it/dxecgvs9se231.png',
                    'The Ka’aba (“cube”) is the most sacred site in Islam, known as the sacred bayt Allah (House of God). It is located at the heart of the sacred mosque Masjid al-Haram in Mecca, Saudi Arabia.'),
                child: SizedBox(
                  width: 150,
                  child: Image.asset('/images/kaababa.png'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 100,
                child: Image.asset('/images/mosque.png'),
              ),
              const SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () => _showAboutDialog(
                  context,
                  'Wuquf in Arafat',
                  'https://png.pngtree.com/png-clipart/20220705/ourmid/pngtree-the-day-of-arafah-png-image_5684297.png',
                  'Wuquf (Arabic: وقوف; meaning “standing”) is the act of being present, even for a moment, at a particular place during Hajj.',
                ),
                child: SizedBox(
                  width: 100,
                  child: Image.asset('/images/umrahwh.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
