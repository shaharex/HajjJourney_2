import 'package:flutter/material.dart';
import 'package:hajj_journey/webview/web_view_container.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WebViewContainer()));
        },
        child: Text('push me'),
      ),
    );
  }
}
