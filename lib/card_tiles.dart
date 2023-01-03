import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const CardTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.8,
          child: Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            visualDensity: const VisualDensity(
              horizontal: -4,
              vertical: -4,
            ),
          ),
        ),
        Text(
          taskName,
          overflow: TextOverflow.fade,
          style: GoogleFonts.mulish(
            color: const Color(0xFFFFFFFF),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
