import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 2, 2),
      body: Center(
        //body: LayoutBuilder TODO, see slides
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 2, 164, 26),
                      width: 2.0,
                    ),
                  ),
                  child: DecoratedBox(
                    // add this
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(20),
                          width: 130.0,
                          height: 130.0,
                        ),
                      ],
                    ),
                  ),
                ),

                /* DecoratedBox(
                  // add this
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 2, 164, 26),
                    ),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(15),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),
                */

                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 2, 164, 26),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: 'Username ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 164, 26),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text.rich(
                  TextSpan(
                    text: 'Level ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 164, 26),
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 164, 26),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: '#Quiz ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 164, 26),
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 164, 26),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Best Score ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 164, 26),
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '2000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 164, 26),
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 16),
                    FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 2, 164, 26),
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      onPressed: () {
                        // Add your onPressed code here!
                        VoidCallback;
                      },
                      child: const Icon(Icons.emoji_events_outlined),
                    ),
                    FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 2, 164, 26),
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      onPressed: () {
                        // Add your onPressed code here!
                        VoidCallback;
                      },
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Quiz',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 2, 164, 26),
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        unselectedItemColor: const Color.fromARGB(255, 2, 164, 26),
        selectedIconTheme: const IconThemeData(size: 50),
        onTap: _onItemTapped,
      ),
    );
  }
}
