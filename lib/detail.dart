import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.of(context).pop(false);
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.archive),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.delete_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mail_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: DetailBody(),
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          'Hello, This is a dummy subject',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Inbox',
                          style: TextStyle(
                              backgroundColor: Colors.grey[400],
                              color: Colors.black,
                              fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.star_border),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: <Widget>[_startWidget(), _endWidget()],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/reply.png',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Reply'),
                    ],
                  ),
                  onPressed: null,
                  borderSide: BorderSide(
                      color: Colors.grey, width: 2, style: BorderStyle.solid),
                ),
                OutlineButton(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/reply-all.png',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Reply All'),
                    ],
                  ),
                  onPressed: null,
                  borderSide: BorderSide(
                      color: Colors.grey, width: 2, style: BorderStyle.solid),
                ),
                OutlineButton(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/forward.png',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Forward'),
                    ],
                  ),
                  onPressed: null,
                  borderSide: BorderSide(
                      color: Colors.grey, width: 2, style: BorderStyle.solid),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _startWidget() {
    return new Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpg'),
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
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'John Wick',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '06:00 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'To me',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/reply.png',
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
