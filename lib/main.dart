import 'package:flutter/material.dart';

void main() {
  List l1 = [
    "🇮🇳   India   🇮🇳",
    "🇺🇲   USA   🇺🇲",
    "🇳🇵   Nepal   🇳🇵",
    "🇨🇴   Colombia   🇨🇴",
    "🇨🇦   Canada   🇨🇦",
    "🇩🇰   Denmark   🇩🇰,",
    "🇮🇩   Indonesia   🇮🇩",
    "🇮🇷   Iran   🇮🇷",
    "🇮🇶   Iraq   🇮🇶",
    "🇯🇵   Japan   🇯🇵",
    "🇯🇴   Jordan   🇯🇴",
    "🇰🇿   Kazakhstan   🇰🇿",
    "🇿🇼   Zimbabwe   🇿🇼",
    "🇪🇸   Spain   🇪🇸",
    "🇸🇬   Singapore   🇸🇬",
    "🇷🇺   Russia   🇷🇺",
    "🇵🇹   Portugal   🇵🇹",
    "🇷🇴   Oman   🇷🇴",
    "🇲🇽   Mexico   🇲🇽",
    "🇭🇺   Hungary   🇭🇺",
  ];
  List c1 = [
    Colors.orange,
    Colors.redAccent,
    Colors.green,
    Colors.yellow,
    Colors.redAccent,
    Colors.white70,
    Colors.black26,
    Colors.green,
    Colors.lightGreenAccent,
    Colors.white38,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.amber,
    Colors.orange.shade900,
    Colors.redAccent.shade700,
    Colors.blue.shade900,
    Colors.yellow.shade900,
    Colors.blueAccent.shade700,
    Colors.greenAccent.shade700,
    Colors.blueGrey,
  ];
  int i = 0;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Text(
            "Country List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
            ),
          ),
          centerTitle: true,
          actions: [Icon(Icons.person_3_outlined, color: Colors.red)],
          leading: Icon(
            Icons.search,
            color: Colors.red,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: l1
                .map(
                  (e) => CountryList(e, c1[i++]),
                )
                .toList(),
          ),
        ),
      ),
    ),
  );
}

Widget CountryList(String data, c1) {
  return Column(
    children: [
      SizedBox(height: 5),
      Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: c1,
            border: Border.all(color: Colors.black, width: 2)),
        child: Center(
            child: Text(
          "$data",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
    ],
  );
}
