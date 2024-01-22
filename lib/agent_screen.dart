import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class Agent extends StatefulWidget {
  const Agent({super.key});

  @override
  State<Agent> createState() => _AgentState();
}

class _AgentState extends State<Agent> {
  bool showBalance = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      drawer: NavDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(60, 30),
                      bottomRight: Radius.elliptical(60, 30))),
              child: SizedBox(
                height: 150,
                // width: 370,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGENCY BANKING",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WALLET BALANCE",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        showBalance
                            ? Text("  N1234567890  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                            : Text("  N ********** ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                showBalance = !showBalance;
                              });
                            },
                            icon: showBalance
                                ? Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.panorama_fish_eye,
                                    color: Colors.white,
                                  ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AgentContainer(),
                    AgentContainer(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AgentContainer(),
                    AgentContainer(),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class AgentContainer extends StatelessWidget {
  const AgentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mouse),
            SizedBox(
              height: 10,
            ),
            Text("Cash Out")
          ],
        ),
      ),
    );
  }
}
