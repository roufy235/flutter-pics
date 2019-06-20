
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/ImageModel.dart';

class ImageList extends StatelessWidget {

    final List<ImageModel> images;
    ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return ListView.builder(
          itemBuilder: (context, int index) {
              return _container(images[index]);
          },
          itemCount: images.length,
      );
  }

  Widget _container (ImageModel image) {
      return Container (
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Column (
              children: <Widget>[
                  Image.network(image.url),
                  Padding(
                      child: Text(image.title),
                      padding: EdgeInsets.all(5.0),
                  ),
              ],
          ),
          decoration: BoxDecoration (
              border: Border.all (
                    color: Colors.blue,
                    width: 2.0
              ),
          ),
      );
  }

}