// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  final String image;
  final double height;
  const ImageWrapper({Key? key, required this.image, required this.height})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder:
          (context, url) => Image.asset(
            'assets/images/loading.gif',
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: height,
          ),
      imageUrl: image,
      height: height,
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
