import 'package:flutter/material.dart';
import 'package:flutter_survey/flutter_survey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Survey Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Survey'),
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
  final _formKey = GlobalKey<FormState>();
  List<QuestionResult> _questionResults = [];
  final List<Question> _initialData = [
    Question(
        question: "请告诉我们你的年龄?",
        isMandatory: true,
        answerChoices: const {
          "18-20": null,
          "20-30": null,
          "超过 30": null,
        }),
    Question(
      isMandatory: true,
      question: '你是否经常感到疲惫?',
      answerChoices: const{
        "是的": null,
        "否": null,
      },
    ),
    Question(
        singleChoice: true,
        question: "你喜欢以下哪种放松方式?",
        answerChoices: const{
          "听音乐": null,
          "运动":null ,
          "打游戏":null ,
        }),
    Question(
      question: "你经常规划自己的未来吗?",
      isMandatory: true,
      answerChoices: const{
        "是的": null,
        "不，并没有":null,
      },
    ),
    Question(
        question: "你对现在的自己满意吗？",
        isMandatory: true,
        answerChoices:const {
          "满意":null,
          "不满意":null,
        }
    ),
    Question(
      question: "你是否经常幻想自己的未来?",
      answerChoices: const{
        "是的": null,
        "不": null,
      },
    ),
    Question(
        question: "你有没有为即将发生的事情提前做准备的习惯?",
        answerChoices: const{
          "没有":null,
          "偶尔": null,
          "是的": null,
        }),
    Question(
        question: "你是否经常觉得自己不如别人",
        answerChoices:const {
          "是的":null,
          "并不是":null
        }),
    Question(
      question: "你是否经常感到孤单?",
      answerChoices:const {
        "是的": null,
        "不，并没有": null,
      },
    ),


    Question(
        question: "你是否觉得自己没有自信？",
        isMandatory: true,
        answerChoices: const{
          "是的":null,
          "并没有":null
        }),
    Question(
        question: "你是否觉得自己没有真正的朋友",
        answerChoices:const {
          "是的":null,
          "并不是":null
        }
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Survey(
            onNext: (questionResults) {
              _questionResults = questionResults;
            },
            initialData: _initialData),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.cyanAccent, // Background Color
              ),
              child: const Text("点击此处查看你的性格"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('这是你的性格'),
                          content: Text('ISTJ 往往喜欢独立思考、沉默寡言,注重内省,并且与人相处时表现得相对谨慎和保守。\n适合职业：IT程序员、数据库管理、会计、房地产经纪人、行政管理、审计师、会计、侦探等。'),
                          actions: <Widget>[
                            TextButton(
                                child: Text(
                                  '取消',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onPressed: () {
                                  Navigator.pop(context, "取消");
                                }),
                            TextButton(
                              child: Text(
                                '确定',
                                style: TextStyle(color: Colors.blue),
                              ),
                              onPressed: () {
                                Navigator.pop(context, "确定");
                              },
                            ),
                          ],
                        );
                      });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

