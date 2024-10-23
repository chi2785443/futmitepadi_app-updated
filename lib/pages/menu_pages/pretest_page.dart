import 'dart:async';
import 'package:flutter/material.dart';
import 'package:futmitepadi/questions_database_connect.dart';
import '../pre_test1/question_model.dart';

class PretestPage extends StatefulWidget {
  const PretestPage({Key? key}) : super(key: key);

  @override
  State<PretestPage> createState() => _PretestPageState();
}

class _PretestPageState extends State<PretestPage> {
  var db = DataBaseConnect();
  late Future _questions;

  Future<List<Question>> getData() async {
    return db.fetchQuestions();
  }

  bool isCountdown = true;

  @override
  void initState() {
    _questions = getData();

    startTimer();
    reset();
    // TODO: implement initState
    super.initState();
  }

  int index = 0;
  bool isPressed = false;
  final Color colour = Colors.purple;
  int score = 0;
  bool isAlreadySelected = false;

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
        setState(() {
          isPressed = true;
          isAlreadySelected = true;
        });
      } else {
        setState(() {
          isAlreadySelected = true;
          isPressed = true;
        });
      }
    }
  }

  static const countdownDuration = Duration(minutes: 40);
  Duration duration = const Duration();
  Timer? timer;

  void reset() {
    setState(() {
      duration = countdownDuration;
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => reduceTime());
  }

  void reduceTime() {
    const reduceseconds = -1;

    setState(() {
      final seconds = duration.inSeconds + reduceseconds;

      if (seconds < 0) {
        timer?.cancel();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(
              child: Text(
                'Time up!!! finish up, learn to work with time!.',
              ),
            ),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 200),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return FutureBuilder(
      future: _questions as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              backgroundColor: Colors.deepPurple.shade50,
              body: SafeArea(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                'Score: $score',
                                style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sourcesanspro',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'End',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sourcesanspro',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Text(
                              '$minutes:$seconds',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.purple.shade300,
                                      blurRadius: 2)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Question ${index + 1}/${extractedData.length}',
                                        style: const TextStyle(
                                          fontFamily: 'sourcesanspro',
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.black,
                                      thickness: 0.4,
                                    ),
                                    Center(
                                      child: Text(
                                        extractedData[index].title,
                                        style: const TextStyle(
                                          fontFamily: 'sourcesanspro',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.black,
                                      thickness: 0.4,
                                    ),
                                    for (int i = 0;
                                        i < extractedData[index].options.length;
                                        i++)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          onPressed: () {
                                            checkAnswerAndUpdate(
                                                extractedData[index]
                                                    .options
                                                    .values
                                                    .toList()[i]);
                                          },
                                          elevation: 5,
                                          height: 30.0,
                                          minWidth: double.infinity,
                                          color: isPressed
                                              ? extractedData[index]
                                                          .options
                                                          .values
                                                          .toList()[i] ==
                                                      true
                                                  ? const Color(0xFF32AB58)
                                                  : Colors.redAccent
                                              : Colors.purple,
                                          child: Text(
                                            extractedData[index]
                                                .options
                                                .keys
                                                .toList()[i],
                                            style: const TextStyle(
                                                letterSpacing: 0.8,
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            onPressed: () {
                              if (index == extractedData.length - 1 &&
                                  isPressed) {
                                showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                          content: ResultDialog(
                                            totalscore: score,
                                            questionlength:
                                                extractedData.length,
                                          ),
                                        ));
                              } else {
                                if (isPressed) {
                                  setState(() {
                                    isPressed = false;
                                    isAlreadySelected = false;
                                    index++;
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Please select an option',
                                      ),
                                      behavior: SnackBarBehavior.floating,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      backgroundColor: Colors.redAccent,
                                    ),
                                  );
                                }
                              }
                            },
                            elevation: 5,
                            height: 30.0,
                            minWidth: double.infinity,
                            color: Colors.white,
                            child: const Text(
                              'Next question',
                              style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.purple,
              value: 3,
            ));
          }
        }
        return const Scaffold(
          body: Center(
              child: CircularProgressIndicator(
            color: Colors.purple,
            value: 3,
          )),
        );
      },
    );
  }
}

class ResultDialog extends StatelessWidget {
  const ResultDialog({
    super.key,
    required this.totalscore,
    required this.questionlength,
  });

  final int totalscore;
  final int questionlength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Result',
            style: TextStyle(
                fontFamily: 'pacifico', fontSize: 25, color: Colors.purple),
          ),
          const Divider(
            height: 30,
            color: Colors.black,
            thickness: 0.6,
          ),
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.purple,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: totalscore < questionlength / 2
                  ? Colors.redAccent
                  : Colors.greenAccent,
              child: Text(
                '$totalscore/$questionlength',
                style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              totalscore == questionlength
                  ? 'Genius!!, your ready..'
                  : totalscore < questionlength / 2
                      ? 'Try again, practice makes perfect'
                      : 'Try harder, almost there',
              style: const TextStyle(
                letterSpacing: 0.8,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontFamily: 'sourcesanspro',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
