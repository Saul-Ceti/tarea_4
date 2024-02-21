import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({
    super.key,
    required this.criptos,
  });

  final List criptos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:criptos.length,
      itemBuilder: (BuildContext context, int index) {
        if(criptos[index]["image"] == "" || criptos[index]["image"] == null) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(criptos[index]['image']),
            ),
            title: Text("${criptos[index]["name"]}"),
            subtitle: Text(
              "${criptos[index]["country"]}\n${criptos[index]["year_established"]}",
            ),
            trailing: CircleAvatar(
              child: Text("${criptos[index]["trust_score"]}",),
            ),
          );
        } else {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(criptos[index]['image']),
            ),
            title: Text("${criptos[index]["name"]}"),
            subtitle: Text(
              "${criptos[index]["country"]}\n${criptos[index]["year_established"]}",
            ),
            trailing: CircleAvatar(
              child: Text("${criptos[index]["trust_score"]}",),
            ),
          );
        }
      },
    );
  }
}