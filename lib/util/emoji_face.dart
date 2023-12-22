import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;

  const EmojiFace({
    super.key,
    required this.emojiFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          emojiFace,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
