import 'package:flutter/material.dart';

class CategoriesListMallika1 extends StatefulWidget {
  const CategoriesListMallika1({Key? key}) : super(key: key);

  @override
  State<CategoriesListMallika1> createState() => _CategoriesListMallika1State();
}

class _CategoriesListMallika1State extends State<CategoriesListMallika1> {
  @override
  List<int> selectedItems = [];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCardMallika1(
            title: "Harvest",
            image: "assets/harvest_activity.png",
            onTap: () {
              setState(() {
                if (selectedItems.contains(0)) {
                  selectedItems.remove(0);
                } else {
                  selectedItems.add(0);
                }
              });
            },
            selected: selectedItems.contains(0),
          ),
          CategoryCardMallika1(
            title: "Pruning",
            image: "assets/pruning_activity.jpeg",
            onTap: () {
              setState(() {
                if (selectedItems.contains(1)) {
                  selectedItems.remove(1);
                } else {
                  selectedItems.add(1);
                }
              });
            },
            selected: selectedItems.contains(1),
          ),
          CategoryCardMallika1(
            title: "Fertilizing",
            image: "assets/activity_fertilize.jpeg",
            onTap: () {
              setState(() {
                if (selectedItems.contains(2)) {
                  selectedItems.remove(2);
                } else {
                  selectedItems.add(2);
                }
              });
            },
            selected: selectedItems.contains(2),
          ),
          CategoryCardMallika1(
            title: "Herbicide",
            image: "assets/herbicide_activity.png",
            onTap: () {
              setState(() {
                if (selectedItems.contains(3)) {
                  selectedItems.remove(3);
                } else {
                  selectedItems.add(3);
                }
              });
            },
            selected: selectedItems.contains(3),
          ),
          CategoryCardMallika1(
            title: "Roadfix",
            image: "assets/roadfix_activity.png",
            onTap: () {
              setState(() {
                if (selectedItems.contains(4)) {
                  selectedItems.remove(4);
                } else {
                  selectedItems.add(4);
                }
              });
            },
            selected: selectedItems.contains(4),
          ),
        ],
      ),
    );
  }
}

class CategoryCardMallika1 extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const CategoryCardMallika1(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: selected ? 2 : 0, color: Colors.lightGreen),
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16, color: selected ? Colors.white : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
