import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/card_tiles.dart';
import 'package:todo_app/tasks.dart';

class TaskListCard extends StatefulWidget {
  const TaskListCard({super.key});

  @override
  State<TaskListCard> createState() => _TaskListCardState();
}

class _TaskListCardState extends State<TaskListCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskList(),
          ),
        );
      },
      child: Container(
        width: 155,
        padding: const EdgeInsets.only(
          left: 28,
          top: 40,
        ),
        decoration: BoxDecoration(
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trip to Paris',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.mulish(
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Divider(
              height: 35,
              thickness: 1,
              color: Color(0xFFFFFFFF),
            ),
            CardTile(
              taskName: "Book flights",
              taskCompleted: false,
              onChanged: (p0) {},
            ),
          ],
        ),
      ),
    );
  }
}
