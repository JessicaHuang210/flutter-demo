import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeStateful> {
  double sliderNum = 17;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(title: Text('Large Font Size')),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: '目前的字體為 ',
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 1.1),
                    children: <TextSpan>[
                      TextSpan(
                        text: sliderNum.round().toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextSpan(text: ' px'),
                    ],
                  ),
                ),
                Slider(
                  value: sliderNum,
                  min: 13,
                  max: 50,
                  divisions: 37,
                  label: sliderNum.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      sliderNum = value;
                    });
                  },
                ),
                Text(
                  'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.',
                  style: TextStyle(fontSize: sliderNum),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeStateful();
  }
}
