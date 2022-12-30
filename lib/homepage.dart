import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    /* double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width; */

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FA),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 30.0,
              ),
              child: SvgPicture.asset(
                'assets/circles_seven_icon.svg',
                height: 30,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.077,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Color(0xFFEAEAEC),
                    thickness: 2,
                    endIndent: 50,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Tasks ',
                    style: GoogleFonts.mulish(
                      color: const Color(0xFF2E2E2E),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Lists',
                        style: GoogleFonts.mulish(
                          color: const Color(0xFFAAAAAA),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Color(0xFFEAEAEC),
                    thickness: 2,
                    indent: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight(context) * 0.074,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: deviceHeight(context) * 0.02,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFAAAAAA),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TaskList(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Text(
                    'Add List',
                    style: GoogleFonts.mulish(
                      color: const Color(0xFFAAAAAA),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              height: deviceHeight(context) * 0.32,
              //height: 250,
              margin: const EdgeInsets.only(
                left: 45,
              ),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => buildCard(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: deviceHeight(context) * 0.11,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey.shade700,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey.shade700,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.drag_handle_outlined,
                color: Colors.grey.shade700,
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCard() => Container(
      width: 155,
      padding: const EdgeInsets.only(
        left: 28,
        top: 40,
      ),
      decoration: BoxDecoration(
        color:
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
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
        ],
      ),
    );
