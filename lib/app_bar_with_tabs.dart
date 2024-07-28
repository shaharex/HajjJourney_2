import 'package:flutter/material.dart';
import 'package:hajj_journey/pages/home_page.dart';
import 'package:hajj_journey/pages/learn_page.dart';
import 'package:hajj_journey/webview/web_view_container.dart';

import 'animations/wave_animations.dart';

class AppBarWithTabs extends StatefulWidget {
  const AppBarWithTabs({
    super.key,
  });

  @override
  State<AppBarWithTabs> createState() => _AppBarWithTabsState();
}

class _AppBarWithTabsState extends State<AppBarWithTabs>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  bool isDark = true;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 250,
              collapsedHeight: 120,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 40, top: 20),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo/logo_hickmet.png",
                    ),
                  ),
                  WaveAnimationDark(),
                  WaveAnimation(),
                ],
              ),
              title: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Coming soon'),
                    ));
                  },
                  icon: const Icon(
                    Icons.settings,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ),
              backgroundColor: const Color(0xff040404),
              pinned: false,
              floating: false,
              snap: false,
              bottom: TabBar(
                indicatorColor: const Color(0xffeec94a),
                controller: _tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      'Map',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Tour',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Learn',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            Center(child: Text('New page')),
            WebViewContainer(),
          ],
        ),
      ),
    );
  }
}
