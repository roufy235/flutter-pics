import 'dart:async';

void main () {
    print("about to fetch data");
    get("gfgfhfffjfjjf")
    .then((result) {
        print(result);
    });

    //or

    /*
    var result = await get("gfgfhfffjfjjf");
    print(result); */
}

Future<String> get(String url) {
    return Future.delayed(Duration(seconds: 5), () {
         return "got the data";
    });
}