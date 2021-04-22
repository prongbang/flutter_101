import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  final String image =
      'https://www.tftus.com/storage/2019/11/Blog-image-8-12-2020-Why-Mostly-Android-Developer-Consider-Flutter-App-Development.jpg';

  final String loading = 'assets/icons/loading.gif';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('AspectRatio: 1:1'),
        AspectRatio(
          aspectRatio: 1 / 1,
          child: FadeInImage.assetNetwork(
            placeholder: loading,
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        Text('AspectRatio: 4:3'),
        AspectRatio(
          aspectRatio: 4 / 3,
          child: FadeInImage.assetNetwork(
            placeholder: loading,
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        Text('AspectRatio: 16:9'),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: FadeInImage.assetNetwork(
            placeholder: loading,
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
