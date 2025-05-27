import 'package:flutter/material.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertisementPanel extends StatefulWidget {
  const AdvertisementPanel({Key? key}) : super(key: key);

  @override
  State<AdvertisementPanel> createState() => _AdvertisementPanelState();
}

class _AdvertisementPanelState extends State<AdvertisementPanel> {
  final advertisements = [
    'assets/images/fashion_banner.jpg',
    'assets/images/get_discount.jpg',
  ];

  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 140,
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: Stack(
          children: [
            PageView(
              controller: _pagecontroller,
              children:
                  advertisements
                      .map(
                        (e) => Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(e, fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
            ),
            Positioned(
              right: 30,
              bottom: 10,
              child: SmoothPageIndicator(
                controller: _pagecontroller,
                count: advertisements.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 4,
                  dotWidth: 8,
                  dotHeight: 8,
                  spacing: 4,
                  dotColor: Colors.white,
                  activeDotColor: Palette.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
