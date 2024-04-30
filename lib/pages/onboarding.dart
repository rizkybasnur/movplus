import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:movplus/services/images.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Images> items = [
    Images(image: 'spiderman.png'),
    Images(image: 'resident.png'),
    Images(image: 'ghost.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0F1016),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  final image = items[index];

                  return Image.asset(
                    "assets/${image.image!}",
                    fit: BoxFit.contain,
                  );
                  // return Image.asset(
                  //   "assets/spiderman.png",
                  //   fit: BoxFit.contain,
                  // );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                pagination: const SwiperPagination(
                  margin: EdgeInsets.all(55),
                  builder: DotSwiperPaginationBuilder(
                    activeColor: Color(0xffDF2935),
                  ),
                ),
                itemCount: 3,
                viewportFraction: 0.9,
                scale: 0.9,
              ),
            ),
            const Center(
                child: Image(
              image: AssetImage('assets/logo.png'),
            )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                  child: Text(
                """Enjoy watching moments together like in the cinema. Let's start watching now with Movplus!""",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        backgroundColor: const Color(0xffDF2935),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      onPressed: () {
                        print('TEEEEEEEES');
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        side: const BorderSide(color: Color(0xffDF2935)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      onPressed: () {
                        print('Sign In');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xffDF2935),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
