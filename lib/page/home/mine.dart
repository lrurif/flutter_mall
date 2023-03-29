import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MineView extends StatefulWidget {
  const MineView({Key? key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MineView> {
  List activityList = [
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "text": "天天领钱"
    },
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "text": "领券中心"
    },
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "text": "省钱卡"
    },
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "text": "分享有礼"
    },
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "text": "特价拼团"
    },
  ];
  List toolsList = [
    {
      "icon": Icons.add_moderator_outlined,
      "text": "收货地址",
    },
    {
      "icon": Icons.add_moderator_outlined,
      "text": "盒马门店",
    },
    {
      "icon": Icons.add_moderator_outlined,
      "text": "客服小蜜",
    },
    {
      "icon": Icons.add_moderator_outlined,
      "text": "发票中心",
    },
    {
      "icon": Icons.add_moderator_outlined,
      "text": "门店证照",
    }
  ];
  List advertisementList = [
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "id": 1
    },
    {
      "img":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1",
      "id": 2
    }
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    
    return SingleChildScrollView(
      child: Container(
        color: Color.fromRGBO(243, 243, 243, 1),
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: mediaQuery.padding.top),
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/mine_bg.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.card_travel),
                        Row(
                          children: const [
                            Icon(Icons.audiotrack),
                            Padding(padding: EdgeInsets.all(5)),
                            Icon(Icons.card_travel),
                            Padding(padding: EdgeInsets.all(5)),
                            Icon(Icons.card_travel)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Row(
                      children: [
                        // https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1"),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("lrurif",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text("会员名：方方方"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            createBox(
              child: Container(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Text("收藏夹"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Text("红包卡券"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "0元",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Text("我的余额"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            createBox(
                child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("我的订单",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(
                            "查看全部",
                            style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        createOrderItem("待付款", Icons.backup_table),
                        createOrderItem("待发货", Icons.backup_table),
                        createOrderItem("待收货", Icons.clear_sharp),
                        createOrderItem("待评价", Icons.backup_table),
                        createOrderItem("退款/售后", Icons.backup_table),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            ActivityListView(activityList),
            ToolsView(toolsList),
            AdvertisementSwiperView(advertisementList),
            // createBox(
            //   ),
          ],
        ),
      ),
    );
  }
}

Widget createBox({required Widget child}) {
  return Container(
    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: child,
  );
}

Widget createOrderItem(String text, icon) {
  return Column(
    children: [
      Icon(
        icon,
        size: 30,
      ),
      Text(
        text,
      ),
    ],
  );
}

class ActivityListView extends StatelessWidget {
  List _list = [];
  ActivityListView(this._list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return createBox(
      child: Container(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _list.map((item) {
            return Column(
              children: [
                Image.network(
                  item["img"],
                  width: 35,
                  height: 35,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(item["text"]),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// 工具列表视图
class ToolsView extends StatelessWidget {
  List _list = [];
  ToolsView(this._list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return createBox(
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _list.map((item) {
            return Column(
              children: [
                Icon(item["icon"]),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(item["text"]),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// 广告轮播图
class AdvertisementSwiperView extends StatelessWidget {
  List advertisementList = [];
  AdvertisementSwiperView(this.advertisementList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return createBox(
        child: Container(
      height: 100,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: PageView.builder(
          itemCount: advertisementList.length,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(advertisementList[pagePosition]["img"]),
                    fit: BoxFit.fill),
              ),
            );
          }),
    ));
  }
}
