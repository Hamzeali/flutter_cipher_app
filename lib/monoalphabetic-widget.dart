import 'package:ba_task/monoalphabetic-simulation.dart';
import 'package:ba_task/text-field.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class MonoalphabeticWidget extends StatelessWidget {
  void simi(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return MonoalphbeticSimulation();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monoalphabetic'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'MONOALPHABETIC',
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
              MyButton(3),
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
