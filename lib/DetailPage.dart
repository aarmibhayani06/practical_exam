import 'package:flutter/material.dart';
import 'package:practical_exam/model_class.dart';

class DetaiPage extends StatefulWidget {
  Model model = Model();
  DetaiPage({super.key, required this.model});

  @override
  State<DetaiPage> createState() => _DetaiPageState(model: model);
}

class _DetaiPageState extends State<DetaiPage> {
  Model model = Model();

  _DetaiPageState({
    required this.model
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height:50,
                    width:double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.6,
                        color: Colors.grey.shade300,
                        blurStyle: BlurStyle.normal,
                        )
                      ]
                    ),
                    child: Center(
                        child: Text(model.name!,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        )
                    )
                ),
                SizedBox(height: 10),
                Container(
                    height:80,
                    width:double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.6,
                            color: Colors.grey.shade300,
                            blurStyle: BlurStyle.normal,
                          )
                        ]
                    ),
                    child: Center(
                        child: Text(model.description!,
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                        )
                    )
                ),
                SizedBox(height: 10),
                Container(
                    height:50,
                    width:double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.6,
                            color: Colors.grey.shade300,
                            blurStyle: BlurStyle.normal,
                          )
                        ]
                    ),
                    child: Center(
                        child: Text(model.author!,
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                        )
                    )
                ),
                SizedBox(height: 10),
                for(int i = 0 ; i< model.method!.length;i++)...[
                  Container(
                      height:50,
                      width:double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.6,
                              color: Colors.grey.shade300,
                              blurStyle: BlurStyle.normal,
                            )
                          ]
                      ),
                      child: Text('Step: $i \n ${model.ingredients![i]}',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                      )
                  ),
                ],
               // Text(model.ingredients!!),
                for(int i = 0 ; i< model.method!.length;i++)...[
                  SizedBox(height: 10),
                  Container(
                      height:150,
                      width:double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.6,
                              color: Colors.grey.shade300,
                              blurStyle: BlurStyle.normal,
                            )
                          ]
                      ),
                      child: Text('Step: $i \n ${model.method![i]}',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                      )
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
