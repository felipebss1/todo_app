import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /* double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    double deviceWidth(BuildContext context) =>
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
            const SizedBox(
              height: 60.0,
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
            const SizedBox(
              height: 55,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
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
                        onPressed: () {},
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
              height: 250,
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
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.drag_handle_outlined,
              ),
              label: '',
            )
          ],
        ),
      ),
      /* bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: const Color(0xFFF8F8FA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.only(
                left: 53,
                right: 53,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Color(0xFFAAAAAA),
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_filled,
              ),
            ),
            Container(
              height: 90,
              padding: const EdgeInsets.only(
                left: 53,
                right: 53,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Color(0xFFAAAAAA),
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ),
              child: const Icon(
                Icons.calendar_today_outlined,
              ),
            ),
            Container(
              height: 90,
              padding: const EdgeInsets.only(
                left: 53,
                right: 53,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ),
              child: const Icon(
                Icons.drag_handle_rounded,
              ),
            ),
          ],
        ),
      ), */
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

      //título

      //divisor

      //lista de task
    );
