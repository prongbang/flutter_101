import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String image1 =
      'https://www.tnrr.in.th/wp-content/uploads/2022/12/3376-1.png';
  final String image2 =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

  // https://icons8.com/preloaders
  final String loading = 'assets/icons/loading.gif';

  final String image = 'assets/images/flutter.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Image.asset'),
        Image.asset(image),
        Text('Image.network'),
        Image.network(image1),
        Text('FadeInImage.assetNetwork'),
        FadeInImage.assetNetwork(placeholder: loading, image: image1),
        Text('Image(image: NetworkImage(image2))'),
        Image(image: NetworkImage(image2)),
      ],
    );
  }
}
