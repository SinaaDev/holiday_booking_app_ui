import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:holiday_booking_app_ui/screens/details_screen.dart';

class VillaItem extends StatelessWidget {
  final String location, image;

  final int price, bedrooms, square;

  const VillaItem({
    super.key,
    required this.location,
    required this.image,
    required this.price,
    required this.bedrooms,
    required this.square,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => DetailsScreen(
                location: location,
                image: image,
                price: price,
                bedrooms: bedrooms,
                square: square,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: price,
                child: SizedBox(
                  height: 330,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '\$ $price',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: HexColor('#4C9FC1')),
                        ),
                        Text(
                          'per month',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: HexColor('#A1A7B0'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/Bed_icon.svg'),
                  const SizedBox(width: 8),
                  Text(
                    '$bedrooms bedrooms',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: HexColor('#A1A7B0')),
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset('assets/square_icon.svg'),
                  const SizedBox(width: 8),
                  Text(
                    '$square\u00B2',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: HexColor('#A1A7B0'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 28,
              width: 65,
              color: Colors.transparent,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
