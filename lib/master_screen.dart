import 'package:final_app/demo_content/steps.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stepper(
        currentStep: _currentStep,
        onStepTapped: (int index) {
          setState(() {
            _currentStep = index;
          });
        },
        controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
          return SizedBox();
        },
        steps: demoSteps.map((DemoStep demoStep) {
          return Step(
            title: Text(
              demoStep.title,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            content: Container(
              width: double.infinity,
              child: Text(
                demoStep.content,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
