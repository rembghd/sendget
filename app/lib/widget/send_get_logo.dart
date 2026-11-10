import 'package:flutter/material.dart';
import 'package:sendget_app/gen/assets.gen.dart';

class SendGetLogo extends StatelessWidget {
  final bool withText;

  const SendGetLogo({required this.withText});

  @override
  Widget build(BuildContext context) {
    final logo = ColorFiltered(
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.primary,
        BlendMode.srcATop,
      ),
      child: Assets.img.logo512.image(
        width: 200,
        height: 200,
      ),
    );

    if (withText) {
      return Column(
        children: [
          logo,
          const Text(
            'SendGet',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      );
    } else {
      return logo;
    }
  }
}
