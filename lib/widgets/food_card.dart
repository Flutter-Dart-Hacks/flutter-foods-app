import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class FoodCart extends StatelessWidget {
  final String title;
  final String ingredients;
  final String imageSrc;
  final int price;
  final String calories;
  final String description;
  final Function(String) pressCallback;

  const FoodCart({
    Key? key,
    required this.title,
    required this.ingredients,
    required this.imageSrc,
    required this.price,
    required this.calories,
    required this.description,
    required this.pressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pressCallback('Sampel value callback');
      },
      child: Container(
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageSrc),
                  ),
                ),
              ),
            ),
            // Price
            Positioned(
              right: 20,
              top: 60,
              child: Text(
                '\$$price',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: SizedBox(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                    Text(
                      'With $ingredients',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: kTextColor.withOpacity(0.4),
                          ),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 3,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: kTextColor.withOpacity(0.65),
                          ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Text(
                        calories,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: kTextColor.withOpacity(0.65),
                            ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
