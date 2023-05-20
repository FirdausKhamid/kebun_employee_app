import 'package:flutter/material.dart';
import 'package:kebun_employee_app/bricks/Widgets%20Example/gradient_button_rounded.dart';
import 'package:kebun_employee_app/screens/report/insert_item_details.dart';

class Report extends StatelessWidget {
  const Report({super.key});

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
              title: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )),
        body: Center(
            child: Padding(
          padding:
              const EdgeInsets.only(bottom: 8, right: 40, left: 40, top: 8),
          child: Column(
            children: [
              GradientButtonFb4(
                text: "Add Report",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InsertDetails(
                              title: '',
                            )),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '  Work History',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // align text to the left
                  ),
                ),
              ),
              Flexible(
                  child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50,
                              child: Image.asset('assets/fruit.png')),
                          title: const Text('Harvesting'),
                          subtitle: const Text('Monday | 12 May'),
                          trailing: Text('20 pc'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50, child: Image.asset('assets/leaf.png')),
                          title: const Text('Pruning'),
                          subtitle: const Text('Saturday | 10 May'),
                          trailing: Text('20 trees'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50,
                              child: Image.asset('assets/fruit.png')),
                          title: const Text('Harvesting'),
                          subtitle: const Text('Monday | 12 May'),
                          trailing: Text('20 pc'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50, child: Image.asset('assets/leaf.png')),
                          title: const Text('Pruning'),
                          subtitle: const Text('Saturday | 10 May'),
                          trailing: Text('20 trees'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50, child: Image.asset('assets/leaf.png')),
                          title: const Text('Pruning'),
                          subtitle: const Text('Saturday | 10 May'),
                          trailing: Text('20 trees'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                              width: 50, child: Image.asset('assets/leaf.png')),
                          title: const Text('Pruning'),
                          subtitle: const Text('Saturday | 10 May'),
                          trailing: Text('20 trees'),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        )));
  }
}
