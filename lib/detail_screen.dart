import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 1),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // Keluar dari halaman detail
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/backward.svg',
                        fit: BoxFit.cover,
                        height: 11,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/menu.svg',
                    fit: BoxFit.cover,
                    height: 11,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            padding: const EdgeInsets.all(6),
                            height: 305,
                            width: 305,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kSecondaryColor,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image_1_big.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Vegetable Salad Bowl\n',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: kTextColor.withOpacity(0.8),
                                      ),
                                ),
                                TextSpan(
                                  text: 'With red tomatoes',
                                  style: TextStyle(
                                    color: kTextColor.withOpacity(0.5),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            '\$20',
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      color: kPrimaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: kTextColor.withOpacity(0.5),
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 25),
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Add to Cart',
                                  style: Theme.of(context).textTheme.button,
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/forward.svg',
                                  height: 11,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor.withOpacity(0.26),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  width: 60,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kPrimaryColor.withOpacity(0.8),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/bag.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  right: 15,
                                  bottom: 10,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 28,
                                    width: 28,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kWhiteColor,
                                    ),
                                    child: Text(
                                      '0',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          ?.copyWith(
                                            color: kPrimaryColor,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
