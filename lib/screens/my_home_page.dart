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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Home Page',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              width: 100,
            ),
            //ElevatedButton(
            //onPressed: null,
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Alert'),
                        content: const Text('This is an alert dialog.'),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Icon(Icons.notification_add, color: Colors.white),
            ),
            const Icon(Icons.settings),
          ],
        ),
      ),
    );

    // ignore: dead_code
    Drawer(
        child: ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Profile'),
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
    ));
    Container(
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
            return Column(
              children: [
                // ignore: sized_box_for_whitespace
                Container(height: 240, child: gridStuff[index]),
              ],
            );
          }),
    );
    BottomNavigationBar(
      showUnselectedLabels: true,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.red, icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.search),
            label: 'Search'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.settings),
            label: 'Settings'),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.person),
            label: 'Profile'),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 2:
            Navigator.pushNamed(context, '/settings');
            break;
          case 3:
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
/*&class Gridview {
  static builder(
      {required SliverGridDelegateWithFixedCrossAxisCount gridDelegate,
      required itemCount,
      required Null Function(BuildContext context, int index) itemBuildar}) {}
}*/
