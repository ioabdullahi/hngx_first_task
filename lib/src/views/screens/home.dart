import 'package:flutter/material.dart';
import 'package:hngx_stage_one/src/views/screens/github_webview.dart';

import '../../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _MainPageState();
}

class _MainPageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildProfileInfo(
                label: 'Display Name',
                info: 'ioabdullahi',
              ),
              _buildProfileInfo(
                label: 'My Slack DP',
                imageUrl: AppLinks.slackDP,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewPage(
                                url: AppLinks.githubLink,
                              ),
                            ));
                      },
                      child: Text(
                        'Visit My Github Profile',
                        style: _getButtonStyle(),
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(
      {required String label, String? imageUrl, String? info}) {
    //ImageUrl should be null when info is not null and vice versa
    //Both should not be null

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: _getLabelTextStyle(),
        ),
        //If Image Url is not null display the Image url else Display the Text
        imageUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  AppLinks.slackDP,
                  width: 150.0,
                  height: 150.0,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    return child;
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return const CircularProgressIndicator(
                        color: Color(0xba048219),
                      );
                    }
                  },
                ),
              )
            : Text(
                info ?? '---',
                style: _displayNameTextStyle(),
              ),
      ],
    );
  }

  //styles used on this view

  TextStyle _getButtonStyle() {
    return const TextStyle(
        fontSize: 16.0,
        letterSpacing: -0.65,
        fontWeight: FontWeight.w600,
        color: Colors.green);
  }

  TextStyle _displayNameTextStyle() {
    return const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.65,
        color: Color(0xff023a1e));
  }

  TextStyle _getLabelTextStyle() {
    return const TextStyle(
        fontSize: 18.0, letterSpacing: -0.65, color: Colors.black45);
  }
}
