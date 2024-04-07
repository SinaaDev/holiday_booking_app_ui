import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:holiday_booking_app_ui/screens/widget/details_item.dart';
import 'package:iconsax/iconsax.dart';

class DetailsScreen extends StatefulWidget {
  final String location, image;
  final int price, bedrooms, square;

  const DetailsScreen(
      {super.key,
      required this.location,
      required this.image,
      required this.price,
      required this.bedrooms,
      required this.square});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> conveniences = [
    'Free parking',
    'TV set',
    'Video monitoring',
    'Air conditioner'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F9F9FB'),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Iconsax.arrow_left)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.message_2)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsItem(
                location: widget.location,
                image: widget.image,
                price: widget.price,
                bedrooms: widget.bedrooms,
                square: widget.square,
              ),
              const SizedBox(height: 8),
              Divider(color: HexColor('#A1A7B026').withOpacity(0.15)),
              const SizedBox(height: 8),
              Text(
                'Excellent two-storey villa with a terrace, private pool and parking spaces is located only 5 minutes from the Indian Ocean',
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/host.jpg'),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Host',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: HexColor('#A1A7B0'),
                      ),
                    ),
                    const Icon(
                      Iconsax.medal5,
                      color: Colors.amber,
                      size: 15,
                    ),
                  ],
                ),
                subtitle: Text(
                  'Kanda Nok',
                  style: GoogleFonts.manrope(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Iconsax.arrow_right_3,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(color: HexColor('#A1A7B026').withOpacity(0.15)),
              const SizedBox(height: 8),
              Text(
                'Conveniences at home',
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: conveniences.length,
                  itemBuilder: (ctx, i) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 30,
                    child: Center(
                      child: Text(
                        conveniences[i],
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 24),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total \$ ${widget.price * 2}',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'for 2 months',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              color: HexColor('#A1A7B0'),
                              fontSize: 12),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: const Text('Reservation'),
                    ),
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
