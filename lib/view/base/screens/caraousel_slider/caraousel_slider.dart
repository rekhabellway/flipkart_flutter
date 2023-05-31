import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CaraouselScreen extends StatelessWidget {
  const CaraouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "hhttps://scontent.fbho4-3.fna.fbcdn.net/v/t1.6435-9/121271323_10158963353803559_7816820813315433886_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=7c38sqTTvHIAX9BAbev&_nc_oc=AQnRbyUbfKnSySzgME35pvIIvG9xJoGPaNAYY_EeWxDi_VG9GdR87e6Rh1GMrf6tKade3t_YZ9CoHpYk31_kmDOI&_nc_ht=scontent.fbho4-3.fna&oh=00_AfAaDq-wGFNp8URgaEx8lZauXb1oCbIqgyVEF2a3LyEBAw&oe=64730E7A"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://scontent.fbho4-3.fna.fbcdn.net/v/t1.6435-9/121271323_10158963353803559_7816820813315433886_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=7c38sqTTvHIAX9BAbev&_nc_oc=AQnRbyUbfKnSySzgME35pvIIvG9xJoGPaNAYY_EeWxDi_VG9GdR87e6Rh1GMrf6tKade3t_YZ9CoHpYk31_kmDOI&_nc_ht=scontent.fbho4-3.fna&oh=00_AfAaDq-wGFNp8URgaEx8lZauXb1oCbIqgyVEF2a3LyEBAw&oe=64730E7A",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fbho4-3.fna.fbcdn.net/v/t1.6435-9/121271323_10158963353803559_7816820813315433886_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=7c38sqTTvHIAX9BAbev&_nc_oc=AQnRbyUbfKnSySzgME35pvIIvG9xJoGPaNAYY_EeWxDi_VG9GdR87e6Rh1GMrf6tKade3t_YZ9CoHpYk31_kmDOI&_nc_ht=scontent.fbho4-3.fna&oh=00_AfAaDq-wGFNp8URgaEx8lZauXb1oCbIqgyVEF2a3LyEBAw&oe=64730E7A"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fbho4-3.fna.fbcdn.net/v/t1.6435-9/121271323_10158963353803559_7816820813315433886_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=7c38sqTTvHIAX9BAbev&_nc_oc=AQnRbyUbfKnSySzgME35pvIIvG9xJoGPaNAYY_EeWxDi_VG9GdR87e6Rh1GMrf6tKade3t_YZ9CoHpYk31_kmDOI&_nc_ht=scontent.fbho4-3.fna&oh=00_AfAaDq-wGFNp8URgaEx8lZauXb1oCbIqgyVEF2a3LyEBAw&oe=64730E7A"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fbho4-3.fna.fbcdn.net/v/t1.6435-9/121271323_10158963353803559_7816820813315433886_n.png?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=7c38sqTTvHIAX9BAbev&_nc_oc=AQnRbyUbfKnSySzgME35pvIIvG9xJoGPaNAYY_EeWxDi_VG9GdR87e6Rh1GMrf6tKade3t_YZ9CoHpYk31_kmDOI&_nc_ht=scontent.fbho4-3.fna&oh=00_AfAaDq-wGFNp8URgaEx8lZauXb1oCbIqgyVEF2a3LyEBAw&oe=64730E7A"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
