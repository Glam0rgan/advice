import 'package:flutter/material.dart';
import 'package:advice/app_theme.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Scaffold(
        backgroundColor:
          isLightMode == true ? AppTheme.white : AppTheme.nearlyBlack,
        body: Column(
          children: <Widget>[
            SizedBox(
                width:screenSize.width,
                height:screenSize.height*0.02,
                child:Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: new Border.all(width: 2,color: Colors.lightBlueAccent),
                  ),
                ),
            ),
            Container(
                height: screenSize.height/10,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  border: new Border.all(width: 2,color: Colors.lightBlueAccent),
                ),
                child: Row(
                    children:<Widget>[
                      SizedBox(width:screenSize.width*0.01),
                      Text(
                          '高考辅助',
                          style : TextStyle(
                              fontSize:30,
                              fontWeight: FontWeight.w500
                          )
                      ),
                      SizedBox(width:screenSize.width*0.5),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.backspace),
                          onPressed: () {},
                        ),
                      ),
                    ]
                )
            ),
            Container(
                height: screenSize.height/10,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                ),
                child: Row(
                  children:[
                    SizedBox(width:screenSize.width*0.04),
                    Container(
                      width: screenSize.width*0.45,
                      child: new GestureDetector(
                        onTap: () {
                          print("------onTap1");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.indigo,
                          ),
                          child:Row(
                            children: [
                              Icon(Icons.memory),
                              Column(
                                children: [
                                  Text(
                                      '智能选志愿',
                                      style : TextStyle(
                                          color: Colors.white,
                                          fontSize:30,
                                          fontWeight: FontWeight.w500
                                      )
                                  ),
                                  Text(
                                      '输入分数一键选志愿',
                                      style : TextStyle(
                                          color: Colors.white,
                                          fontSize:15,
                                          fontWeight: FontWeight.w500
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:screenSize.width*0.02),
                    Container(
                      width: screenSize.width*0.45,
                      child: new GestureDetector(
                        onTap: () {
                          print("------onTap1");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.indigo,
                          ),
                          child:Row(
                            children: [
                              Icon(Icons.content_paste),
                              Column(
                                children: [
                                  Text(
                                      '新建志愿表',
                                      style : TextStyle(
                                          color: Colors.white,
                                          fontSize:30,
                                          fontWeight: FontWeight.w500
                                      )
                                  ),
                                  Text(
                                      '定制多种报考方案',
                                      style : TextStyle(
                                          color: Colors.white,
                                          fontSize:15,
                                          fontWeight: FontWeight.w500
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:screenSize.width*0.04),
                  ],
                ),
            ),
            Container(
                height: screenSize.height/3,
                width: double.infinity,
                child: GridView(
                    //childAspectRatio: 2/3,
                    //padding: EdgeInsets.only(left:15,right:15),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                    ),
                    children:[
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.business),
                            onPressed: () {},
                          ),
                          Text("查大学"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.import_contacts),
                            onPressed: () {},
                          ),
                          Text("查专业"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.video_library),
                            onPressed: () {},
                          ),
                          Text("同分去向"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.assignment),
                            onPressed: () {},
                          ),
                          Text("一分一段"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.laptop),
                            onPressed: () {},
                          ),
                          Text("省控线"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.restaurant_menu),
                            onPressed: () {},
                          ),
                          Text("高校pk"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.tonality),
                            onPressed: () {},
                          ),
                          Text("测概率"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.accessible_forward),
                            onPressed: () {},
                          ),
                          Text("名师直播"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.zoom_in),
                            onPressed: () {},
                          ),
                          Text("查扩缩招"),
                        ],
                      ),Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.insert_emoticon),
                            onPressed: () {},
                          ),
                          Text("性格测试"),
                        ],
                      ),
                    ],
                ),
            ),
          ],
        )
    );
  }
}