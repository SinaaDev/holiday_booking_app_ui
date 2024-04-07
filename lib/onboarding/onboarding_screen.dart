import 'package:flutter/material.dart';
import 'package:holiday_booking_app_ui/screens/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/onboarding.jpg',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            right: 24,
            left: 24,
            bottom: 30,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
              height: 312,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Text(
                    'Find your dream villa in Indonesia',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Long-term rental of villas with a guarantee of conformity with photographs',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => const HomeScreen()),
                      );
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 37),
                      child: Text('Get Started'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
