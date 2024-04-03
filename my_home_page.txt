import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> imageList = [
    Image.asset('assets/images/backpacker.jpg', height: 150),
    Image.asset('assets/images/car.jpg', height: 150),
    Image.asset('assets/images/clouds.jpg', height: 150),
    Image.asset('assets/images/flowers.jpg', height: 150),
    Image.asset('assets/images/luis.jpg', height: 150),
    Image.asset('assets/images/tracks.jpg', height: 150),
  ];

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 5,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ignore: sized_box_for_whitespace
                Container(height: 200, child: imageList[index]),
                imageList[index],
              ],
            );
            /*return const Text(
            'Hello World!',
            textAlign: TextAlign.center,
          );*/
          }),
        ),
      ),
      /*body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 1200,
          child: ListView(
            //Padding(
            padding: const EdgeInsets.all(140),
            //child: ListView(
            children: const [
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
              ListTile(
                leading: Text('Message'),
              ),
            ],
          ),
        ),
      ),
      /*decoration: const BoxDecoration(
          color: Colors.cyan,
          image: DecorationImage(
            image: AssetImage('assets/images/bg.avif'),
            scale: 0.1,
            alignment: Alignment.topCenter,
          ),
        ),*/
*/
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
