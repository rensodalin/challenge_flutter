import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SEASONS"),
          backgroundColor: const Color.fromARGB(255, 141, 188, 226),
        ),
        body: const SeasonCard(),
      ),
    ),
  );
}

class SeasonCard extends StatefulWidget {
  const SeasonCard({super.key});

  @override
  State<SeasonCard> createState() => _SeasonCardState();
}

class _SeasonCardState extends State<SeasonCard> {
  int SeasonIndex = 0;

  void nextCambodiaSeason() {
    setState(() {
      SeasonIndex = (SeasonIndex + 1) % 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/winter.png",
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text(
                  "FRANCE",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: nextCambodiaSeason,
            child: Container(
              width: 150,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    [
                      "assets/Spring.png",
                      "assets/Summer.png",
                      "assets/Autume.png",
                      "assets/Winter.png",
                    ][SeasonIndex],
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "CAMBODIA",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
