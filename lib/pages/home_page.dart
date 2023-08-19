import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/drawer.dart";
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "good";
    return Scaffold(
      appBar: AppBar(
        title: Text("MY app"),
      ),
      body: Center(
        child: Container(
          child: Text("my good $days by $name"),
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
