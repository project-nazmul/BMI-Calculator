import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 40;
  int weight = 65;
  int age = 23;
  bool isMale = true;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                                isFemale = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(5),
                              color: isMale ? Colors.pink : Colors.blueGrey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Expanded(
                                    flex: 3,
                                    child: SizedBox(
                                      height: double.infinity,
                                      width: double.infinity,
                                      child: Icon(
                                        Icons.male,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        'MALE',
                                        style: TextStyle(color: Colors.white38),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                                isFemale = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(5),
                              color: isFemale ? Colors.pink : Colors.blueGrey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Expanded(
                                    flex: 3,
                                    child: SizedBox(
                                      height: double.infinity,
                                      width: double.infinity,
                                      child: Icon(
                                        Icons.female,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        'FEMALE',
                                        style: TextStyle(color: Colors.white38),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(color: Colors.blueGrey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: TextStyle(color: Colors.white38),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$height',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(color: Colors.white38),
                              )
                            ],
                          ),
                          Slider(
                              value: height.toDouble(),
                              min: 0,
                              max: 300,
                              thumbColor: Colors.pink,
                              inactiveColor: Colors.white38,
                              activeColor: Colors.white,
                              onChanged: (val) {
                                setState(() {
                                  height = val.toInt();
                                });
                              })
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration:
                                const BoxDecoration(color: Colors.blueGrey),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'WEIGHT',
                                  style: TextStyle(color: Colors.white38),
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.3),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.3),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration:
                                const BoxDecoration(color: Colors.blueGrey),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'AGE',
                                  style: TextStyle(color: Colors.white38),
                                ),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.3),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.3),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(5),
              color: Colors.pink,
              width: MediaQuery.of(context).size.width,
              child: MaterialButton(
                  elevation: 10,
                  color: Colors.pink,
                  onPressed: () {
                    double bmi = (weight / (height * height)) * 10000;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.pink[200],
                            title: const Text('Result'),
                            content: Column(
                              children: [
                                Text('Height is: $height'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Weight is: $weight'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Age is: $age'),
                                const SizedBox(
                                  height: 10,
                                ),
                                isMale
                                    ? const Text('Gender is: Male')
                                    : const Text('Gender is: Female'),
                                const SizedBox(
                                  height: 10,
                                ),
                                bmi < 17
                                    ? const Text('Under Weight')
                                    : bmi > 17 && bmi < 26
                                        ? const Text('Normal Weight')
                                        : const Text('Over Weight')
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.pink)),
                                child: const Text('Ok'),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
