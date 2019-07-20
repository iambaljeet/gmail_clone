import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _myListView(context),
          SearchAppBar(height: 75.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
    );
  }

  // replace this function with the code in the examples
  Widget _myListView(BuildContext context) {
    String imageIndex;
    List list = new List(20);

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        imageIndex = new Random().nextInt(10).toString();

        print('imageIndex: ' + imageIndex);
        if (index == 0) {
          return ListItem(
              paddingTop: 100, paddingBottom: 8.0, image: imageIndex);
        } else if (index == list.length - 1) {
          return ListItem(
              paddingTop: 8.0, paddingBottom: 100, image: imageIndex);
        } else {
          return ListItem(
              paddingTop: 8.0, paddingBottom: 8.0, image: imageIndex);
        }
      },
    );
  }
}

class ListItem extends StatelessWidget {
  final double paddingTop;
  final double paddingBottom;
  final String image;

  const ListItem(
      {Key key,
      @required this.paddingTop,
      @required this.paddingBottom,
      @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0, paddingTop, 8.0, paddingBottom),
      child: Row(
        children: <Widget>[_startWidget(image), _endWidget()],
      ),
    );
  }
}

_startWidget(String image) {
  return new Container(
    child: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/$image.jpg'),
          radius: 25.0,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    ),
  );
}

_endWidget() {
  return new Container(
    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Hello',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '06:00 PM',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            'Hi, this is a demo gmail app',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Test message for this mail.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ),
              Icon(Icons.star_border)
            ],
          ),
        ],
      ),
    ),
  );
}

class SearchAppBar extends StatelessWidget {
  final double height;

  const SearchAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 8.0,
        margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Search mail'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 40.0,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/my_image.jpg'),
                    radius: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
