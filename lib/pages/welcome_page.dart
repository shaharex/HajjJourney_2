import 'package:flutter/material.dart';
import 'package:hajj_journey/app_bar_with_tabs.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0404),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo/kaaba_background.png'),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Center(
              child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Image.asset('assets/logo/iconDeen.png', width: 100),
                    const Text(
                      'Welcome to',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.normal),
                    ),
                    Text('HajjJourney',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.normal)),
                    Text('Peace, mercy and blessing of Allah be upon you.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        // Navigate to the next page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppBarWithTabs()),
                        );
                      },
                      highlightColor: Colors.white.withOpacity(0.3),
                      splashColor: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 65),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Text(
                          'Bismillah and start',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
