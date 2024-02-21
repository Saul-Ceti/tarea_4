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
            // On touch event mensaje de alerta con todos los datos
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("${criptos[index]["name"]}"),
                    content: Column(
                      children: <Widget>[
                        Text("Country: ${criptos[index]["country"]}"),
                        Text("Year Established: ${criptos[index]["year_established"]}"),
                        Text("Trust Score: ${criptos[index]["trust_score"]}"),
                        Text("Trust Score Rank: ${criptos[index]["trust_score_rank"]}"),
                        Text("Trade Volume: ${criptos[index]["trade_volume_24h_btc"]}"),
                        Text("Trade Volume Rank: ${criptos[index]["trade_volume_24h_btc_normalized"]}"),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}