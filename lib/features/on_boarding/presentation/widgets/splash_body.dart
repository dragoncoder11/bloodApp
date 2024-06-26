import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'VEIN 2 VEIN',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Vector.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}