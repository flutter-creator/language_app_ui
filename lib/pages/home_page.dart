import 'package:flutter/material.dart';
import 'package:my_app/util/emoji_face.dart';
import 'package:my_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.home,
                    size: 28,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.message,
                    size: 28,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.person,
                    size: 28,
                  ),
                ),
                label: ''),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greetings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Barathraj!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '23 Jan, 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      // notification icon
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.all(14),
                    child: const Row(
                      children: [
                        //icon
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 26,
                        ),
                        SizedBox(width: 8),

                        //text
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // How do you feel
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                      // icon
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // bad
                      Column(
                        children: [
                          Center(
                            child: EmojiFace(
                              emojiFace: '😫',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          Center(
                            child: EmojiFace(
                              emojiFace: '🙂',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          Center(
                            child: EmojiFace(
                              emojiFace: '😃',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          Center(
                            child: EmojiFace(
                              emojiFace: '🤩',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // white space
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // list view of exercises
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: ListView(
                            children: const [
                              ExerciseTile(
                                name: 'Speaking Skills',
                                subName: '16 Exercises',
                                icon: Icons.favorite,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                name: 'Reading Skills',
                                subName: '12 Exercises',
                                icon: Icons.book,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                name: 'Listening Skills',
                                subName: '8 Exercises',
                                icon: Icons.music_note,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
