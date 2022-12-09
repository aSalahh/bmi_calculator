import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  double result;

  BmiResult({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey, // <-- SEE HERE
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Back",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Text(
                    "Your",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Summary",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.indigo),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 20,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          const Text(
                            "Your BMI is ",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w100,
                                color: Colors.indigo),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            '${result.round()}',
                            style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w100,
                                color: Colors.indigoAccent),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            "kg/m2",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w100,
                                color: Colors.indigo),
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Healthy BMI range:",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    " 18.5 kg/m2 - 25 kg/m2",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.indigoAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
