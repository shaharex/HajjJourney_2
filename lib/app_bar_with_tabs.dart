import 'package:flutter/material.dart';
import 'package:hajj_journey/pages/home_page.dart';
import 'package:hajj_journey/pages/tour_page.dart';
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
    _tabController?.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController?.indexIsChanging ?? false) {
      if (_tabController?.index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewContainer()),
        ).then((_) {
          _tabController?.index = 0;
        });
      }
    }
  }

  @override
  void dispose() {
    _tabController?.removeListener(_handleTabSelection);
    _tabController?.dispose();
    super.dispose();
  }

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
          children: [
            HomePage(),
            TourPage(),
            WebViewContainer(),
          ],
        ),
      ),
    );
  }
}
