import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled3/constant.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class CashedImage extends StatelessWidget {
  final String? image;

  CashedImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
      ),
      child: FadeInUp(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "150",
                  style: K.textCardStyle,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            width: 350,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PinchZoom(
                child: OctoImage(
                  width: double.infinity,
                  height: double.infinity,
                  image: CachedNetworkImageProvider(image!),
                  errorBuilder: (context, url, error) {
                    return Container();
                  },
                  fit: BoxFit.cover,
                ),
                resetDuration: const Duration(milliseconds: 100),
                maxScale: 2.5,
                onZoomStart: () {
                  print('Start zooming');
                },
                onZoomEnd: () {
                  print('Stop zooming');
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
