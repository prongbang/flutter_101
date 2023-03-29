import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  final String image =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

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
