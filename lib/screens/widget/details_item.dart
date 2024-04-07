import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsItem extends StatelessWidget {
  final String location, image;

  final int price, bedrooms, square;

  const DetailsItem({
    super.key,
    required this.location,
    required this.image,
    required this.price,
    required this.bedrooms,
    required this.square,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 19,
            ),
            Hero(
              tag: price,
              child: SizedBox(
                height: 218,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location,
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Column(
                    children: [
                      Text(
                        '\$ $price',
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: HexColor('#4C9FC1'),
                        ),
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
                    color: HexColor('#A1A7B0'),
                  ),
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
                const SizedBox(width: 20),
                SvgPicture.asset('assets/bath_icon.svg'),
                const SizedBox(width: 8),
                Text(
                  '3 baths',
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
      ],
    );
  }
}
