import 'package:flutter/material.dart';
import 'package:nano/shop_page.dart';

import 'agent_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  void ontapc(int value) {
    if (mounted) {
      setState(() {
        selectedIndex = value;
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      ShopPage(),
      Explore(),
      Agent(),
      Sales(),
      More(),
    ];
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 5,
            top: 10,
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              onTap: (value) {
                ontapc(value);
              },
              currentIndex: selectedIndex,
              showSelectedLabels: true,
              elevation: 0,
              enableFeedback: true,
              // showUnselectedLabels: true,
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey.shade600,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.shop),
                    label: 'Shop',
                    activeIcon: Icon(Icons.shop_outlined)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    label: 'Explore',
                    activeIcon: Icon(Icons.explore_off)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.support_agent),
                    label: 'Agent',
                    activeIcon: Icon(Icons.support_agent_outlined)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart),
                    label: 'Sales',
                    activeIcon: Icon(Icons.bar_chart_outlined)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more),
                    label: 'More',
                    activeIcon: Icon(Icons.more_outlined)),
              ])),
      body: pages[selectedIndex],
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Explore Screen"),
      ),
    );
  }
}

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sales Screen"),
      ),
    );
  }
}

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("More Screen"),
      ),
    );
  }
}
