import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hashiras.dart';

class HashiraWidget extends StatelessWidget {

  final Hashira item;

  const HashiraWidget({super.key, required this.item}):assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          
        },
        leading: Image.network(item.imageUrl,),
        title:Text(item.name),
        subtitle: Text(item.description),
              
      ),
    );
  }
}