import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hashiras.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/hashira_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => HashiraModel.hashiras[0]);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              for (var item in dummyList)
                HashiraWidget(
                  item: item,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
