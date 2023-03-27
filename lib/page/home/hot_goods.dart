import 'package:flutter/material.dart';

class HotGoods extends StatefulWidget {
  const HotGoods({Key? key}) : super(key: key);

  @override
  _HotGoodsState createState() => _HotGoodsState();
}

class _HotGoodsState extends State<HotGoods> {
  List _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 2; i++) {
      _list.add({
        "img":
            "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
        "title": "韩国人参精华液仙草人生内容超出",
        "price": "3599",
        "discountPrice": "599",
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("热门商品"),
      Row(
        children: [
          Expanded(flex: 1, child: HotItem(_list)),
          SizedBox(
            width: 10,
          ),
          Expanded(flex: 1, child: HotItem(_list)),
        ],
      )
    ]);
  }
}

class HotItem extends StatelessWidget {
  List _list = [];
  HotItem(this._list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var item = _list[index];
          return Column(
            children: [
              Container(
                // color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFE8E8E8),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(children: [
                        Text(
                          item["title"],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "￥${item["price"]}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "￥${item["discountPrice"]}",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            )),
                            Icon(
                              Icons.add_box_rounded,
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
