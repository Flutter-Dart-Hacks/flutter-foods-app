import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          button: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    height: 11,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Simple way to order \nTasty food',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: const <Widget>[
                      CategoryTitle(
                        title: 'Semua',
                        isActive: true,
                      ),
                      CategoryTitle(
                        title: 'Ayam',
                      ),
                      CategoryTitle(
                        title: 'Nasi',
                      ),
                      CategoryTitle(
                        title: 'Minuman',
                      ),
                      CategoryTitle(
                        title: 'Dessert',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 15,
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor),
                ),
                child: SvgPicture.asset('assets/icons/search.svg'),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: 400,
                width: 270,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 380,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          color: kPrimaryColor.withOpacity(0.1),
                        ),
                      ),
                    ),
                    // Rounded background
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 181,
                        width: 181,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor.withOpacity(0.15),
                        ),
                      ),
                    ),
                    // Food image
                    Positioned(
                      top: 0,
                      left: -50,
                      child: Container(
                        height: 184,
                        width: 276,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/image_1.png'),
                          ),
                        ),
                      ),
                    ),
                    // Price
                    Positioned(
                      right: 20,
                      top: 60,
                      child: Text(
                        '\$20',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool isActive;

  const CategoryTitle({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button?.copyWith(
              color: isActive ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
