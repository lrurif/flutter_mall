import 'package:flutter/material.dart';
import 'package:mall/utils/ScreenUtil.dart';

class MineView extends StatefulWidget {
  const MineView({Key? key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().statusHeight),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(150)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fef4b09ad-4425-4739-b383-10b60f34c5ac%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682609264&t=cfe1dab65e12ae00ddc2330246405bb1"),
                            ))),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("lrurif",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
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
      ],
    );
  }
}
