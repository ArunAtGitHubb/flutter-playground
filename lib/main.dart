import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Test'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Widget> _buildThreePageViewChildren() {
    return <Widget>[
      Container(color: Colors.red),
      Container(color: Colors.blue),
      Container(color: Colors.green),
    ];
  }

  List<BottomNavigationBarItem> _buildThreeItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.heart_broken),
        label: 'Likes',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Setting',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(children: _buildThreePageViewChildren()
          //  Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       const Text(
          //         'You have pushed the button this many times:',
          //       ),
          //       Text(
          //         '$_counter',
          //         style: Theme.of(context).textTheme.headlineMedium,
          //       ),
          //     ],
          //   ),
          // ),
          ),
      bottomNavigationBar: BottomNavigationBar(
        items: _buildThreeItems(),
        onTap: (value) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
