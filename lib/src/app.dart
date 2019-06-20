import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/models/ImageModel.dart';
import 'widgets/image_list.dart';

class MyAppState extends State<MyApp> {
    int counter = 0;
    List<ImageModel> images = [];

    void _fetchImage() {
        counter++;
        print("about to fetech image");
        get("http://jsonplaceholder.typicode.com/photos/$counter")
        .then((jsonData) {
            var format = convert.json.decode(jsonData.body);
            ImageModel image = ImageModel.fromJson(format);
            setState(() {
                images.add(image);
            });
        });
    }

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ImageList(images),
            appBar: AppBar(
                title: Text("My App"),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: _fetchImage,
                child: Icon(Icons.add),
                backgroundColor: Colors.blue,
            ),
        ),
    );
  }
}

class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        // TODO: implement createState
        return MyAppState();
    }

}