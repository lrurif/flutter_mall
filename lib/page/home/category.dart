import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mall/utils/ScreenUtil.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil().statusHeight + 5),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: '搜索',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(Icons.add_shopping_cart),
              )
            ],
          ),
        ),
        Expanded(child: CategoryMain())
      ]),
    );
  }
}

class CategoryMain extends StatefulWidget {
  const CategoryMain({Key? key}) : super(key: key);

  @override
  _CategoryMainState createState() => _CategoryMainState();
}

class _CategoryMainState extends State<CategoryMain> {
  List _list = ["本期推荐", "方便面/酱菜", "米/面粉面条", "杂粮/干货", "食用油"];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 100,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  String item = _list[index];
                  bool isActive = _index == index;
                  return Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _index = index;
                          });
                        },
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 10, right: 10),
                          color: Colors.white,
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color:
                                    isActive ? Colors.deepOrange : Colors.black,
                                fontWeight: isActive
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          top: 10,
                          bottom: 10,
                          child: Container(
                            width: 5,
                            decoration: BoxDecoration(
                                color: isActive
                                    ? Colors.deepOrange
                                    : Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          )),
                    ],
                  );
                }),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: RightList(),
          )),
        ],
      ),
    );
  }
}

class RightList extends StatefulWidget {
  const RightList({Key? key}) : super(key: key);

  @override
  _RightListState createState() => _RightListState();
}

class _RightListState extends State<RightList> {
  List goodsList = [
    {
      "img":
          "https://img0.baidu.com/it/u=1303167093,1468955559&fm=253&fmt=auto&app=138&f=JPEG?w=748&h=500",
      "title": "进口冷冻熟制海鳌虾尾",
      "labels": ["压榨工艺", "新西兰奶源"],
      "price": "169.9",
      "unit": "瓶",
      "discountPrice": "179.9",
    },
    {
      "img":
          "https://img1.baidu.com/it/u=2232489839,2461103186&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313",
      "title": "进口冷冻熟制海鳌虾尾",
      "labels": ["压榨工艺", "新西兰奶源"],
      "price": "169.9",
      "unit": "瓶",
      "discountPrice": "179.9",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: goodsList.length,
        itemBuilder: (context, index) {
          var item = goodsList[index];
          return Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LayoutBuilder(
                //   builder: (context, constraints){
                //     return Container(
                //       height: constraints.maxHeight,
                //       width: 10,
                //       color: Colors.red,
                //     );
                //   }
                // ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(item["img"]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // child: Image.network(item["img"], width: 90, fit: BoxFit.fill),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 230, 228, 228),
                                width: 1))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                item["title"],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: RichText(
                                  text: TextSpan(
                                      children: createLabelList(item["labels"]),
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              221, 113, 113, 113))),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "￥${item["price"]}",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(text: "/${item["unit"]}"),
                                        TextSpan(
                                            text: "￥${item["discountPrice"]}",
                                            style: TextStyle(
                                                decoration: TextDecoration
                                                    .lineThrough)),
                                      ], style: TextStyle(color: Colors.grey)),
                                    )),
                                    Icon(Icons.card_travel)
                                  ],
                                ),
                              ))
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

List<InlineSpan> createLabelList(List<String> list) {
  return list.map((label) {
    return TextSpan(text: label);
  }).toList();
}
