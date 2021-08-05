import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(catalog: catalog).wh(100, 50),
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Rebum labore takimata sed ipsum gubergren lorem dolor sed takimata. Sea ipsum ipsum et sanctus no labore vero justo. Lorem at consetetur ipsum dolore sit sit amet takimata et, rebum amet ipsum amet sit eos. Justo nonumy lorem sadipscing aliquyam at et stet. Dolor dolor aliquyam sanctus voluptua accusam sed.."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .py8()
                          .px16()
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
