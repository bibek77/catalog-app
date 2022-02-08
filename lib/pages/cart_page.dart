import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _cartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.color(context.cupertinoTheme.primaryColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {},
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                  // ),
                  child: "Buy".text.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _cartList extends StatefulWidget {
  const _cartList({Key? key}) : super(key: key);

  @override
  __cartListState createState() => __cartListState();
}

class __cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not supported yet".text.make()));
            },
            icon: Icon(Icons.remove_circle_outline)),
        title: "Item 1".text.make(),
      ),
    );
  }
}
