
import 'package:flutter/material.dart';
import 'package:practical_exam/Clickbutton.dart';
import 'package:practical_exam/DetailPage.dart';
import 'package:practical_exam/model_class.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: modelList.length,
              itemBuilder: (context, index) {
                Model model = modelList[index];
                return InkWell(
                  onTap: () {
                    print('Tapped on ${model.name}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaiPage(model: model),
                      ),
                    );

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurStyle: BlurStyle.normal,
                            blurRadius: 0.7,
                          )
                        ]
                      ),
                      child: Center(
                        child: Text(
                          model.name ?? 'No Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
