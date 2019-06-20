
class ImageModel {
    int id;
    String url;
    String title;

    ImageModel(this.id, this.url, this.title);

    ImageModel.fromJson(Map<String, dynamic> parseJson) {
        this.id = parseJson['id'];
        this.url = parseJson['url'];
        this.title = parseJson['title'];
    }
}