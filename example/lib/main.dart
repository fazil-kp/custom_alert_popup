import 'package:flutter/material.dart';
import 'package:smart_popup/smart_popup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Popup Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const CustomAlertPopupExample(),
    );
  }
}

class CustomAlertPopupExample extends StatelessWidget {
  const CustomAlertPopupExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white, image: DecorationImage(image: AssetImage("assets/images/bg_image.png"), fit: BoxFit.fill)),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => SmartPopup(
                  title: "Smart Popup",
                  subTitle: "This is a smart popup. It can display alerts and messages",
                  firstButtonText: "Ok",
                  secondButtonText: "Cancel",
                  firstButtonTap: () {
                    Navigator.of(context).pop();
                  },
                  secondButtonTap: () {
                    Navigator.of(context).pop();
                  },
                  // Do not pass image and video path 5simultaneously; pass one at a time.
                  imagePath: "assets/images/demo_image.png",
                  // videoPath: "assets/videos/demo_video.mp4",
                  // videoVolume: 100,
                  // videoPlayBackSpeed: 2.5,
                  // hideFirstButton: true,
                  // showCloseButton: false,
                  // showButtons: false,
                ),
              );
            },
            child: const Text("Tap Here"),
          ),
        ),
      ),
    );
  }
}
