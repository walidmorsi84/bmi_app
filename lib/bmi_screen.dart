import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  void initState()
  {
    super.initState();
  }

  bool isMale = true;
  double height = 120.0;
  double weight = 60.0;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70.0,
                              color: Colors.white,
                              ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.black : Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.green : Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                      textBaseline: TextBaseline.alphabetic,
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey[400],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.small(
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.remove,
                                  size: 25.0,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton.small(
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 25.0,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton.small(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age-',
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 25.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  FloatingActionButton.small(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age+',
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 25.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultScreen(
                      isMale: isMale,
                      result: result.round(),
                      age: age,
                    ),
                  ),
                );
              },
              color: Colors.black,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}