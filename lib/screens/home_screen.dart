import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:holiday_booking_app_ui/screens/widget/villa_item.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<String> categories = [
    'Best',
    'Popular',
    'Immediate',
    'New',
    'Profitable',
    'Affordable'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F9F9FB'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are here',
                          style: GoogleFonts.manrope(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#A1A7B0'),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Indonesia',
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#464646'),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.expand_more,
                              color: HexColor('#A1A7B0'),
                              size: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/profile.jpg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter city or region',
                            hintStyle: GoogleFonts.manrope(
                                fontSize: 14,
                                color: HexColor('#CED0D4'),
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                            prefixIcon: Icon(
                              Iconsax.search_normal_1,
                              size: 24,
                              color: HexColor('#CED0D4'),
                              weight: 2,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14)),
                      child: const Icon(Iconsax.setting_4),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (ctx, i) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = i;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            categories[i],
                            style: GoogleFonts.manrope(
                                fontWeight: _selectedIndex == i
                                    ? FontWeight.w600
                                    : FontWeight.w500,
                                fontSize: 14),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            height: 2,
                            width: 30,
                            color: _selectedIndex == i
                                ? Colors.black
                                : Colors.transparent,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    VillaItem(
                      image: 'assets/first_place.jpg',
                      location: 'Villa, Kemeh Tinggi',
                      bedrooms: 2,
                      price: 1499,
                      square: 214,
                    ),
                    VillaItem(
                      image: 'assets/second_place.jpg',
                      location: 'Villa, Cat BA, Haiphong',
                      bedrooms: 3,
                      price: 599,
                      square: 120,
                    ),
                    VillaItem(
                      image: 'assets/third_place.jpg',
                      location: "Villa, D'Omah Hotel Yohya",
                      bedrooms: 1,
                      price: 349,
                      square: 76,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(20),
          items: items,
          backgroundColor: HexColor('#4C9FC1'),
          color: Colors.white60,
          colorSelected: Colors.white,
          indexSelected: visit,
          paddingVertical: 20,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }

  int visit = 0;
  final List<TabItem> items = [
    const TabItem(
      icon: Iconsax.home_2,
    ),
    const TabItem(
      icon: Iconsax.heart,
    ),
    const TabItem(
      icon: Iconsax.setting,
    ),
    const TabItem(
      icon: Iconsax.profile_circle,
    ),
  ];
}
