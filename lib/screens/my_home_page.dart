import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*List<Widget> imageList = [
    Image.asset('assets/images/backpacker.jpg', height: 150),
    Image.asset('assets/images/car.jpg', height: 150),
    Image.asset('assets/images/clouds.jpg', height: 150),
    Image.asset('assets/images/flowers.jpg', height: 150),
    Image.asset('assets/images/luis.jpg', height: 150),
    Image.asset('assets/images/tracks.jpg', height: 150),
  ];*/

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/backpacker.jpg',
      'assets/images/car.jpg',
      'assets/images/clouds.jpg',
      'assets/images/flowers.jpg',
      'assets/images/luis.jpg',
      'assets/images/tracks.jpg',
    ];

    // ignore: unused_local_variable
    List<String> imageTitle = [
      'backpacker',
      'car',
      'clouds',
      'flowers',
      'luis',
      'tracks'
    ];

    // ignore: non_constant_identifier_names
    double Width = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    double Height = MediaQuery.of(context).size.height;

    // ignore: unused_local_variable
    List<Widget> gridStuff = List.generate(6, (index) {
      // ignore: sized_box_for_whitespace
      return Container(
        width: Width,
        height: Height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(imageList[index]),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            imageTitle[index],
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.75),
                  offset: const Offset(5, 5),
                ),
              ],
            ),
          ),
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home Page',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
              onPressed: null,
              child: Icon(Icons.notification_add, color: Colors.white),
            ),
            Icon(Icons.settings, color: Colors.white),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 240,
          ),
          itemCount: gridStuff.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              // ignore: sized_box_for_whitespace
              Container(height: 240, child: gridStuff[index]),
            ]);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.settings),
              label: 'Settings'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }
}

/*&class Gridview {
  static builder(
      {required SliverGridDelegateWithFixedCrossAxisCount gridDelegate,
      required itemCount,
      required Null Function(BuildContext context, int index) itemBuildar}) {}
}*/
