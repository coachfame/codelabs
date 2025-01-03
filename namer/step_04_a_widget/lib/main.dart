import 'package:flutter/material.dart';

void main() => runApp(FameGritApp());

class FameGritApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fame Grit',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 16.0),
        ),
      ),
      home: FameGritHome(),
    );
  }
}

class FameGritHome extends StatefulWidget {
  @override
  _FameGritHomeState createState() => _FameGritHomeState();
}

class _FameGritHomeState extends State<FameGritHome> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    DailyTasksPage(),
    WorkoutsPage(),
    GritChallengesPage(),
    MealsAndSupplementsPage(),
    CommunityPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fame Grit'),
        centerTitle: true,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Daily Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: 'Grit Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Meals & Supps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DailyTasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Daily Tasks', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

class WorkoutsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Workouts', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

class GritChallengesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Grit Challenges', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

class MealsAndSupplementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Meals & Supplements', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Community', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
