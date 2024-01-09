import 'package:flutter/material.dart';

class PokemonProperty extends StatelessWidget {
  final String title;
  final String value;
  const PokemonProperty({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: RichText(
        text: TextSpan(
          text: '$title: ',
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: value,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
