import 'package:flutter/cupertino.dart';

class UploadTripPicture extends StatelessWidget {
  String? image;
   UploadTripPicture({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        image:DecorationImage(
          image: AssetImage(image??""),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
