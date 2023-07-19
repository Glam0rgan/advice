import 'package:flutter/material.dart';
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
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
                color: Colors.blue[600],
                height: screenSize.height/3,
                width: double.infinity,
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
                          icon: Icon(Icons.launch),
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
                color: Colors.green[600],
                height: screenSize.height/3,
                width: double.infinity,
                child: Row(
                    children:<Widget>[
                      Expanded(
                        child:Row(
                          children:<Widget>[
                            IconButton(
                              icon: Icon(Icons.memory),
                              onPressed: () {},
                            ),
                            Text("智能选志愿"),
                          ]
                        ),
                      ),
                      Expanded(
                        child:Row(
                            children:<Widget>[
                              IconButton(
                                icon: Icon(Icons.content_paste),
                                onPressed: () {},
                              ),
                              Text("新建志愿表"),
                            ]
                        ),
                      ),
                    ]
                )
            ),
            Container(
                color: Colors.red[600],
                height: screenSize.height/3,
                width: double.infinity,
                child: Row(
                    children:<Widget>[
                      Expanded(
                        child:Column(
                            children:<Widget>[
                              Expanded(
                                child:IconButton(
                                  icon: Icon(Icons.business),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child:Text("查大学"),
                              ),
                            ]
                        ),
                      ),
                      Expanded(
                        child:Column(
                            children:<Widget>[
                              Expanded(
                                child:IconButton(
                                  icon: Icon(Icons.book),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child:Text("查专业"),
                              ),
                            ]
                        ),
                      ),
                      Expanded(
                        child:Column(
                            children:<Widget>[
                              Expanded(
                                child:IconButton(
                                  icon: Icon(Icons.video_library),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child:Text("同分去向"),
                              ),
                            ]
                        ),
                      ),
                      Expanded(
                        child:Column(
                            children:<Widget>[
                              Expanded(
                                child:IconButton(
                                  icon: Icon(Icons.assignment),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child:Text("一分一段表"),
                              ),
                            ]
                        ),
                      ),
                      Expanded(
                        child:Column(
                            children:<Widget>[
                              Expanded(
                                child:IconButton(
                                  icon: Icon(Icons.laptop),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child:Text("省控线"),
                              ),
                            ]
                        ),
                      ),
                    ]
                )
            ),
          ],
        )
    );
  }
}