import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipePage extends StatefulWidget {
  @override
  _LiquidSwipePageState createState() => _LiquidSwipePageState();
}

class _LiquidSwipePageState extends State<LiquidSwipePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LiquidSwipe'),
      ),
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.deepPurple,
              ),
              Container(
                color: Colors.deepOrange,
              ),
            ],
            fullTransitionValue: 500,
            waveType: WaveType.liquidReveal,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.white),
            positionSlideIcon: 0.54,
            onPageChangeCallback: (page) {
              setState(() {
                _page = page;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, _buildDot),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    double selectedNess = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((_page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedNess;
    return Container(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: Container(width: 8.0 * zoom, height: 8.0 * zoom),
        ),
      ),
    );
  }
}
