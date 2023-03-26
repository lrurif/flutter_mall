import 'package:flutter/material.dart';

class CommandList extends StatefulWidget {
  const CommandList({Key? key}) : super(key: key);

  @override
  _CommandListState createState() => _CommandListState();
}

class _CommandListState extends State<CommandList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "新品推荐",
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Image.network(
              "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
              height: 150,
              fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Image.network(
                      "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
                      height: 80,
                      fit: BoxFit.cover,
                    )),
                Padding(padding: EdgeInsets.only(left: 4, right: 4)),
                Expanded(
                    flex: 1,
                    child: Image.network(
                      "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
                      height: 80,
                      fit: BoxFit.cover,
                    )),
                Padding(padding: EdgeInsets.only(left: 4, right: 4)),
                Expanded(
                    flex: 1,
                    child: Image.network(
                      "https://img1.baidu.com/it/u=1472391233,99561733&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
                      height: 80,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
