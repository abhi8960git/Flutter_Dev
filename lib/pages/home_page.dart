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
    await Future.delayed(Duration(seconds: 3));
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
        child: (HashiraModel.hashiras != null && HashiraModel.hashiras.isNotEmpty) 
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, index) {
            final item = HashiraModel.hashiras[index];
            return Card(
              clipBehavior: Clip.antiAlias,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: GridTile(
                child: Image.network(item.image_url),
                
                header: Container(
                  child: Center(
                    child: Text(item.name,style: TextStyle(fontSize: 24),
                    
                  )),
                  padding:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 177, 178, 96),
                  ),


                  ),
                footer: Container(
                  child: Center(
                    child: Text(item.description,
                    style: TextStyle(fontSize: 25,color: Colors.lightBlue),
                    
                    
                    ),
                    
                    
                  
                  ),
                  padding: EdgeInsets.symmetric(vertical: 22),
                )
                ),
            );
          
          },
          itemCount: HashiraModel.hashiras.length,
        ): Center(child: CircularProgressIndicator(),)
      ),
    );
  }
}




// In the List View Case we use this : 

//  ListView.builder(
//           itemCount: HashiraModel.hashiras.length,
//           itemBuilder: (context, index) {
//             return HashiraWidget(
//               item: HashiraModel.hashiras[index],
//             );
//           },
//         )