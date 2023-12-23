import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatefulWidget {
  const UrlLauncherExample({super.key});

  @override
  State<UrlLauncherExample> createState() => _UrlLauncherExampleState();
}

class _UrlLauncherExampleState extends State<UrlLauncherExample> {
  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: const Text("Show Flutter Home Page"),
        ),
      ),
    );
  }
}
