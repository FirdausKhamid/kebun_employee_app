import 'package:flutter/material.dart';
import 'package:kebun_employee_app/bricks/Widgets%20Example/gradient_button_rounded.dart';

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
                onPressed: () {},
              )
            ],
          ),
        )));
  }
}
