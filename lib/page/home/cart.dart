import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<CartView> {
  List cartList = [
    {
      "storeName": "盒马云超",
      "isSelect": false,
      "children": [
        {
          "img":
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
          "goodsName": "三文鱼",
          "labels": [
            "快递发货",
            "快递发货",
            "快递发货",
            "快递发货",
          ],
          "price": "19.9",
          "unit": "条",
          "originPrice": "39.9",
          "count": "1",
          "isSelect": false,
        }
      ]
    },
    {
      "storeName": "盒马云超",
      "isSelect": false,
      "children": [
        {
          "img":
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
          "goodsName": "三文鱼",
          "labels": [
            "快递发货",
            "快递发货",
            "快递发货",
            "快递发货",
          ],
          "price": "19.9",
          "unit": "条",
          "originPrice": "39.9",
          "count": "1",
          "isSelect": false,
        },
        {
          "img":
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
          "goodsName": "三文鱼",
          "labels": [
            "快递发货",
            "快递发货",
            "快递发货",
            "快递发货",
          ],
          "price": "19.9",
          "unit": "条",
          "originPrice": "39.9",
          "count": "1",
          "isSelect": false,
        }
      ]
    }
  ];
  bool? isSelectAll = false;
  double totalPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(243, 243, 243, 1),
        ),
        child: Column(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: GoodsListView(cartList),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(children: [
                      Checkbox(
                        activeColor: Colors.deepOrange,
                        value: isSelectAll,
                        onChanged: (value) {
                          setState(() {
                            isSelectAll = value;
                          });
                        },
                        shape: CircleBorder(),
                      ),
                      Container(
                        child: Text("全选"),
                      )
                    ]),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Text("合计"),
                      Text(
                        "￥${totalPrice}",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "结算",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.only(
                                top: 10, right: 30, bottom: 10, left: 30)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.deepOrange),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                          ),
                        ),
                      )
                    ],
                  ))
                ]),
          )
        ]),
      ),
    );
  }
}

class GoodsListView extends StatefulWidget {
  List cartList = [];
  GoodsListView(this.cartList, {Key? key}) : super(key: key);

  @override
  _GoodsListState createState() => _GoodsListState(this.cartList);
}

class _GoodsListState extends State<GoodsListView> {
  List cartList = [];
  _GoodsListState(this.cartList);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          var item = cartList[index];
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Checkbox(
                        value: item["isSelect"],
                        onChanged: (value) {
                          item["isSelect"] = value;
                        },
                        activeColor: Colors.deepOrange,
                        shape: CircleBorder(),
                      ),
                    ),
                    Text(
                      item["storeName"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                Container(
                  child: Column(
                    children: item["children"].map<Widget>((cItem) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Checkbox(
                              value: cItem["isSelect"],
                              onChanged: (value) {
                                cItem["isSelect"] = value;
                              },
                              activeColor: Colors.deepOrange,
                              shape: CircleBorder(),
                            ),
                            Expanded(
                                child: Row(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(cItem["img"]),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cItem["goodsName"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Wrap(
                                          children: cItem["labels"]
                                              .map<Widget>((label) {
                                            return Text(label);
                                          }).toList(),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "￥${cItem["price"]}",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepOrange,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18)),
                                                TextSpan(
                                                    text:
                                                        "/${cItem["unit"]}￥${cItem["originPrice"]}",
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            200, 200, 200, 1),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13))
                                              ]),
                                            ),
                                            CountView(),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class CountView extends StatefulWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<CountView> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0x33333333)),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      height: 30,
      child: Row(children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(width: 1, color: Color(0x33333333)))),
          child: Icon(Icons.add),
        ),
        Container(
          height: 30,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(num.toString())]),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              border:
                  Border(left: BorderSide(width: 1, color: Color(0x33333333)))),
          child: Icon(Icons.add),
        ),
      ]),
    );
  }
}
