import 'package:flutter/material.dart';
import 'package:kebun_employee_app/general-widget/cardwidget.dart';
import 'package:kebun_employee_app/price_card.dart';
import 'package:kebun_employee_app/screens/yield/delivery_record.dart';

class Yield extends StatelessWidget {
  const Yield({super.key});

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
                  Text(
                    'Yield',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Center(
          child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeliveryRecord()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: BalanceCard(
                title: "Total Delivery",
                body: "Your current balance is",
                subInfoText: " 9.3 Tan",
                subInfoTitle: "Up until 13 Apr 2023",
                onMoreTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(31, 255, 251, 251),
              ),
              height: 120,
              width: 120,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CircularProgressIndicator(
                      value: 0.372,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.lightGreen),
                      strokeWidth: 15,
                    ),
                  ),
                  SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Monthly Goals | APRIL ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '15.7 Tan left to collect',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '17 Days Remaining ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 500,
            child: GridView(
              // Make a 2 column grid
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              // Generate 100 widgets that display their index in the List
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PriceCard(
                      text: "Fertization",
                      imageUrl: "assets/login_palm_oil.png",
                      subtitle: "RM3/kg",
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PriceCard(
                      text: "Employee",
                      imageUrl: "assets/login_palm_oil.png",
                      subtitle: "RM0.40/kg",
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PriceCard(
                      text: "Fruit Maturity",
                      imageUrl: "assets/login_palm_oil.png",
                      subtitle: "RM3/kg",
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PriceCard(
                      text: "",
                      imageUrl: "assets/login_palm_oil.png",
                      subtitle: "RM0.40/kg",
                      onPressed: () {}),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
