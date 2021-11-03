import 'package:ba_task/button.dart';
import 'package:ba_task/rort-13-simulation.dart';
import 'package:ba_task/text-field.dart';
import 'package:flutter/material.dart';

class ROT13Widget extends StatelessWidget {
  void simi(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return Rot13Simulation();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rot-13'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'ROT-13',
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
                  'OUTPUT FIELD', TextInputType.text, 10, 150, 10, 10, 3),
              MyButton(4),
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
