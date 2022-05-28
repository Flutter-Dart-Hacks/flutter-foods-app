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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
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
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Vegetable Salad Bowl\n',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
