import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String? text) {
    if (text == null) return;

    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

class Menu_card extends StatefulWidget {
  // const Menu_card({Key? key}) : super(key: key);

  Menu_card({
    super.key,
    required this.cardwidget,
    required this.headertext,
    required this.subtext,
    required this.ontap,
  });

  final Widget cardwidget;
  final String headertext;
  final String subtext;
  final Function() ontap;

  @override
  State<Menu_card> createState() => _Menu_cardState();
}

class _Menu_cardState extends State<Menu_card> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
          ], color: Colors.white, borderRadius: BorderRadius.circular(35.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 7,
          ),
          height: 110,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: widget.cardwidget),
                Text(
                  '${widget.headertext}',
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'worksansbold',
                      fontSize: 11),
                ),
                Text(
                  '${widget.subtext}',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.purple.shade600,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'worksans',
                      fontSize: 9),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Purpleflatbutton extends StatelessWidget {
  const Purpleflatbutton({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);

  final String title;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: MaterialButton(
        onPressed: onpressed,
        elevation: 8.0,
        height: 35.0,
        // padding: EdgeInsets.symmetric(horizontal: 100.0),
        color: Colors.purple.shade700,
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'worksans',
              letterSpacing: 0.8,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}

class Questionbutton extends StatelessWidget {
  const Questionbutton(
      {Key? key,
      required this.option,
      required this.onpressed,
      required this.answer});

  final String option;
  final String answer;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.purple,
        onPressed: onpressed,
        child: Text(
          '$option.  $answer',
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

class News_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  News_card(
      {super.key,
      required this.headertext,
      required this.date,
      required this.url,
      required this.body,
      required this.ontap});

  final Text headertext;
  final Text date;
  final String url;
  final Text body;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          height: 250,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(url),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  headertext,
                  date,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Notification_card extends StatelessWidget {
  Notification_card(
      {super.key,
      required this.headertext,
      required this.date,
      required this.body,
      required this.ontap});

  final Text headertext;
  final Text date;
  final Text body;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          height: 70,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  headertext,
                  date,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Course_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  Course_card(
      {super.key,
      required this.headertext,
      required this.subtext,
      required this.url,
      required this.body,
      required this.ontap});

  final Text headertext;
  final Text subtext;
  final String url;
  final Text body;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          height: 250,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(url),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  headertext,
                  subtext,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Menutiles extends StatefulWidget {
  Menutiles({
    Key? key,
    required this.title,
    required this.subtext,
  });

  final String title;
  final String subtext;

  @override
  State<Menutiles> createState() => _MenutilesState();
}

class _MenutilesState extends State<Menutiles> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 65,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        widget.subtext,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'worksans',
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            // _launchUrl();
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Librarytiles extends StatelessWidget {
  const Librarytiles({
    required this.title,
    required this.subtext,
    required this.ontap,
  });

  final Text title;
  final Text subtext;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        height: 100,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: title,
                    ),
                    subtext,
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: ontap,
                  icon: Icon(
                    Icons.download,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Calendartiles extends StatelessWidget {
  const Calendartiles({
    required this.title,
    required this.date,
  });

  final Text title;
  final Text date;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 10,
        ),
        height: 35,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Flexible(child: title), date],
            ),
          ),
        ),
      ),
    );
  }
}

class Servicestiles extends StatelessWidget {
  const Servicestiles({
    required this.title,
    required this.subtext,
    required this.prices,
    required this.ontap,
  });

  final Text title;
  final Text subtext;
  final Text prices;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        height: 100,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: title,
                    ),
                    subtext,
                    prices,
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: ontap,
                  icon: const Icon(
                    Icons.sms_outlined,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Scholarshiptiles extends StatelessWidget {
  const Scholarshiptiles({
    required this.about,
    required this.firm,
    required this.prices,
    required this.ontap,
  });

  final Text firm;
  final Text about;
  final Text prices;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.fromLTRB(
          10,
          7,
          10,
          7,
        ),
        height: 150,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: firm,
                      ),
                      about,
                      prices,
                    ],
                  ),
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: ontap,
                  icon: const Icon(
                    Icons.ads_click,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
