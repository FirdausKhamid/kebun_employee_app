import 'package:flutter/material.dart';
import 'package:kebun_employee_app/price_card.dart';
import 'package:kebun_employee_app/status_card.dart';

class Harvest extends StatefulWidget {
  const Harvest({super.key});

  @override
  State<Harvest> createState() => _HarvestState();
}

class _HarvestState extends State<Harvest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 47, 47, 47),
            elevation: 0,
            centerTitle: false,
            title: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 65),
                    child: Text(
                      'Harvest  Activity',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Block Harvest Status",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: GridView(
                // Make a 2 column grid
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                // Generate 100 widgets that display their index in the List
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: StatusCard(
                        text: "Block A",
                        color_status: Colors.green,
                        subtitle: "100%",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: StatusCard(
                        text: "Block B",
                        color_status: Colors.yellow,
                        subtitle: "75%",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: StatusCard(
                        text: "Block B",
                        color_status: Colors.yellow,
                        subtitle: "25%",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: StatusCard(
                        text: "Block B",
                        color_status: Colors.grey,
                        subtitle: "0%",
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
