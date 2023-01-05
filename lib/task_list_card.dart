import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/task_list_card_tiles.dart';
import 'package:todo_app/tasks_general_view.dart';

class TaskListCard extends StatefulWidget {
  const TaskListCard({super.key});

  @override
  State<TaskListCard> createState() => _TaskListCardState();
}

class _TaskListCardState extends State<TaskListCard> {
  List todoList = [
    ["Buy Milk", false],
    ["Plan weekend outing", false],
    ["Publish Friday blog post", false],
    ["Run 3 miles", false],
    ["Run 10 miles", false],
  ];

  void boxChecked(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

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
        decoration: BoxDecoration(
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                top: 40,
              ),
              child: Text(
                'Trip to Paris',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.mulish(
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const Divider(
              height: 35,
              thickness: 1,
              color: Color(0xFFFFFFFF),
              indent: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return CardTile(
                    taskName: todoList[index][0],
                    taskCompleted: todoList[index][1],
                    onChanged: (value) => boxChecked(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
