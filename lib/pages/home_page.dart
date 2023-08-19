import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/hashiras.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/hashira_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var json = await rootBundle.loadString("assets/files/data.json");
    var decodedData = jsonDecode(json);
    var hashirasData = decodedData["hashiras"];
    HashiraModel.hashiras = List.from(hashirasData)
        .map<Hashira>((item) => Hashira.fromMap(item))
        .toList();
    setState(() {});

    print(hashirasData);
  }

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "good";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Collections",
          style: TextStyle(
            fontFamily: GoogleFonts.audiowide().fontFamily,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: HashiraModel.hashiras.length,
          itemBuilder: (context, index) {
            return HashiraWidget(
              item: HashiraModel.hashiras[index],
            );
          },
        ),
      ),
    );
  }
}
