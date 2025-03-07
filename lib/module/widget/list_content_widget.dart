import 'package:flutter/material.dart';

class ListContentWidget extends StatelessWidget {
  final Map<String, dynamic>
      picture;
  final Function() onTap;

  const ListContentWidget({required this.picture, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(picture['download_url']!,
                height: 200,
                fit: BoxFit.cover), 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, 
                children: [
                  Text(
                    "by: ${picture['author']}",
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
