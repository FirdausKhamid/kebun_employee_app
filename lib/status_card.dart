import 'package:flutter/material.dart';
import 'package:kebun_employee_app/bricks/Widgets%20Example/dialog.dart';

class StatusCard extends StatelessWidget {
  final String text;
  final Color color_status;
  final String subtitle;
  final Function() onPressed;

  const StatusCard(
      {required this.text,
      required this.color_status,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12.5),
        ),
        child: Column(
          children: [
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: color_status,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed:
                    // Call this in a function
                    () => showDialog<Dialog>(
                        context: context,
                        builder: (BuildContext context) => DialogFb1()),
                child: Text('Update',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )))
          ],
        ),
      ),
    );
  }
}
