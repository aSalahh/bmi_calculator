import 'dart:math';

import 'package:bmi_calculator/view/BmiResult.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isMale = true;
  double height = 120.0;

  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Healthy Tracker",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "BMI",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Calculator",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.indigoAccent,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale
                                ? Color.fromRGBO(159, 170, 216, 1.0)
                                : Colors.black12),
                        child: Column(
                          children: const [
                            Image(
                              image: AssetImage('assets/images/man.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.indigoAccent),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !isMale
                                ? Color.fromRGBO(159, 170, 216, 1.0)
                                : Colors.black12),
                        child: Column(
                          children: const [
                            Image(
                              image: AssetImage('assets/images/boss.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.indigo),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/height_icon.jpg'),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Height",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigo,
                                  fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigoAccent,
                                  fontSize: 17.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        divisions: 140,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.black12,
                        thumbColor: Colors.black,
                        label: height.round().toString(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/weight_icon.jpg'),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigo,
                                  fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "Kgs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigoAccent,
                                  fontSize: 17.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Slider(
                        value: weight.toDouble(),
                        min: 20.0,
                        max: 150.0,
                        divisions: 140,
                        onChanged: (value) {
                          setState(() {
                            weight = value.toInt();
                          });
                        },
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.black12,
                        thumbColor: Colors.black,
                        label: weight.round().toString(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Image(
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/age_ic.jpg'),
                          ),
                          Text(
                            "Age",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.indigo,
                                fontSize: 17.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        heroTag: 'age-',
                        mini: true,
                        backgroundColor: Colors.indigo,
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          '$age',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.indigo,
                              fontSize: 30.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                        heroTag: 'age+',
                        mini: true,
                        backgroundColor: Colors.indigo,
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BmiResult(result: result,)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.indigo,
                    shadowColor: Colors.indigoAccent,
                    elevation: 5.0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Calculate your BMI',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
