import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'imc_calculator.dart';

class ResultsPage extends StatelessWidget {
  final ImcCalculator calc;

  ResultsPage(this.calc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Calculadora de IMC",
          ),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "TU RESULTADO",
                  style: kBigTextSyle.copyWith(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: kActiveColorValueCard,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        calc.getResult(),
                        style: kMyAppTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        calc.getImc(),
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        calc.getAdvise(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                label: "VOLVER",
                ontap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
