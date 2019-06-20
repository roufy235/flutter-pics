

import 'dart:convert' as prefix0;

void main () {
    var json = '{"url" : "http://nairaland.com", "id" : 1}';

    var jsonArray = '[{"url" : "http://nairaland.com", "id" : 1}, {"url" : "http://facebook.com", "id" : 2}]';

    var formattedJson = prefix0.json.decode(jsonArray);
    for(var jsonObj in formattedJson) {
        ImageModel image = ImageModel.fromJson(jsonObj);
        print(image.id);
    }

}

class ImageModel {
    String url;
    int id;

    ImageModel(this.id, this.url);

    ImageModel.fromJson(parseJson) {
        this.id = parseJson['id'];
        this.url = parseJson['url'];
    }
}