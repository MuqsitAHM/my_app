import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../constants.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    children: [
      Expanded(child: Image.asset('images/enter_address.jpg')),
      Text('Set Your Delivery Location',style: kPageViewTextStyle,textAlign: TextAlign.center,), //make this text appear at the bottom later maybe padding issue
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/order_food.jpg')),
      Text('Order Online From Your Favourite Store',style: kPageViewTextStyle,textAlign: TextAlign.center,),  // center property missing maybe check it out if any error
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/deliver_food.png')),
      Text('Quick Delivery To Your Doorstep',style: kPageViewTextStyle,textAlign: TextAlign.center,),
    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column( //2,15.15 made some changes
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        SizedBox(height: 20,),
        DotsIndicator(
          dotsCount: _pages.length,
          position: _currentPage.toDouble(),
          decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              activeColor: Colors.deepOrangeAccent
          ),
        ),
        SizedBox(height: 20,),
      ],
    ) ;
  }
}
