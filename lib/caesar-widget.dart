import 'package:ba_task/button.dart';
import 'package:ba_task/text-field.dart';
import 'package:flutter/material.dart';

import 'caesar-simulation.dart';

class CaesarWidget extends StatelessWidget {
  void simi(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return CaesarSimulationWidget();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caesar'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'CAESAR CIPHER',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[700],
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              MyTextField(
                  'INPUT FIELD', TextInputType.multiline, 10, 10, 10, 10, 1),
              MyTextField(
                  'OUTPUT FIELD', TextInputType.text, 10, 10, 10, 10, 3),
              MyTextField(
                  'SHIFT VALUE', TextInputType.number, 50, 100, 200, 10, 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     MyButton(),
              //   ],
              // ),
              MyButton(1),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => simi(context),
                        child: Text(
                          'Simulation',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
