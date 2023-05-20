import 'package:flutter/material.dart';
import 'package:kebun_employee_app/bricks/Widgets%20Example/promo_card.dart';

import '../../bricks/Widgets Example/horizontal_card.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

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
                    'Activity',
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: ImageCard(
                text: 'Fertilization',
                imageUrl:
                    'https://live.staticflickr.com/4303/35496429643_748bd30fc8_b.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: ImageCard(
                text: 'Herbicide',
                imageUrl:
                    'https://sodsolutions.com/wp-content/uploads/2021/09/man-spraying-herbicide-on-weeds-1024x576.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: ImageCard(
                text: 'Pruning',
                imageUrl:
                    'https://www.hb.com.my/vi-content/uploads/2017/06/pruning.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: ImageCard(
                text: 'Road Maintenance',
                imageUrl:
                    'https://www.truegridpaver.com/wp-content/uploads/2021/01/muddy-road.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: ImageCard(
                text: 'Harvest',
                imageUrl:
                    'https://www.asianagri.com/wp-content/uploads/2018/04/technology-in-oil-palm-plantation.png',
              ),
            ),
          ],
        )),
      ),
    );
  }
}
