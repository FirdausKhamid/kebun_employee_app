import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kebun_employee_app/screens/activity/activity_screen.dart';
import 'package:kebun_employee_app/screens/report/report.dart';
import 'package:kebun_employee_app/screens/yield/yield_screen.dart';
import 'package:kebun_employee_app/authentication/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kebun App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen, // Set the primary color
        // primaryColor: Color.fromRGBO(119, 185, 94, 1), // Set the primary color
        scaffoldBackgroundColor: Colors.white,
        //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final primaryColor = const Color(0xFF1E1E1E);
  final secondaryColor = const Color.fromRGBO(99, 201, 142, 1);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);
  int currentIndex = 0;

  final screen = [
    Report(),
    Activity(),
    Yield(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          //Item Selection
          type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
          selectedItemColor: secondaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          //Item List
          items: [
            BottomNavigationBarItem(
              label: "Report",
              icon: Icon(Icons.list),
              backgroundColor: primaryColor,
            ),
            BottomNavigationBarItem(
              label: "Activtiy",
              icon: Icon(Icons.list_alt_rounded),
              backgroundColor: primaryColor,
            ),
            BottomNavigationBarItem(
              label: "Payment",
              icon: Icon(Icons.monetization_on_outlined),
              backgroundColor: primaryColor,
            )
          ],
        ),
      ),
      body: Center(
        child: screen[currentIndex],
      ),
    );
  }
}
