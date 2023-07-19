import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
                                icon: Icon(Icons.thumb_up),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child:IconButton(
                                icon: Icon(Icons.thumb_up),
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
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
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
                          child:IconButton(
                            icon: Icon(Icons.thumb_up),
                            onPressed: () {},
                          ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child:IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
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
