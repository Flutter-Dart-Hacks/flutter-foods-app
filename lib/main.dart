import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/detail_screen.dart';
import 'package:food_delivery_app/widgets/category_title.dart';
import 'package:food_delivery_app/widgets/food_card.dart';

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
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryColor.withOpacity(0.3)),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    FoodCart(
                      title: 'Vegan salad bowl',
                      imageSrc: 'assets/images/image_1.png',
                      price: 24,
                      calories: '440Kcal',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      ingredients: 'Tomato and vegetables',
                      pressCallback: (String value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DetailScreen();
                            },
                          ),
                        );
                      },
                    ),
                    FoodCart(
                      title: 'Vegan salad bowl',
                      imageSrc: 'assets/images/image_2.png',
                      price: 21,
                      calories: '410Kcal',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      ingredients: 'Tomato and vegetables',
                      pressCallback: (String value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DetailScreen();
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
