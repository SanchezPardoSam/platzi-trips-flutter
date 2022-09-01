import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter/Place/ui/widgets/card_image_list.dart';
import '../../../widgets/gradient_back.dart';


class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido", 250),
        CardImageList()
      ],
    );
  }

}