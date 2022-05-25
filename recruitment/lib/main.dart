// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String biosimg = "assets/biosw.png";
  int derk = 0;
  var biosimag = AssetImage("assets/biosw.png");
  Color txtclr = Colors.white;
  Color hbgcolor = Color.fromARGB(255, 17, 17, 17);
  Color boxclr = Colors.grey.shade800;
  Color shadclr = Colors.transparent;
  Color bgclr = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    final hei = MediaQuery.of(context).size.height;
    final wid = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgclr,
        body: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraints) {
            if (hei < wid) {
              return Column(children: [
                headerbar(wid),
                //
                // MAIN BODY
                const Divider(
                  height: 50,
                  indent: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    containerone(hei * 0.5, wid * 0.45),
                    containertwo(hei * 0.5, wid * 0.45),
                  ],
                ),
                const Divider(
                  height: 50,
                  indent: 50,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    containerthree(hei * 0.5, wid * 0.45),
                    containerfour(hei * 0.5, wid * 0.45),
                  ],
                ),
              ]);
            } else {
              return Column(children: [
                headerbar(wid),
                //
                // MAIN BODY
                const Divider(
                  height: 30,
                  indent: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    containerone(hei * 0.35, wid * 0.9),
                    const Divider(
                      height: 30,
                      indent: 30,
                    ),
                    containertwo(hei * 0.35, wid * 0.9),
                    const Divider(
                      height: 30,
                      indent: 30,
                    ),
                    containerthree(hei * 0.35, wid * 0.9),
                    const Divider(
                      height: 30,
                      indent: 30,
                    ),
                    containerfour(hei * 0.35, wid * 0.9),
                    const Divider(
                      height: 30,
                      indent: 30,
                    ),
                  ],
                ),
              ]);
            }
          }),
        ),
      ),
    );
  }

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///

  Container headerbar(double wid) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: wid,
      height: 90,
      decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.white,
          //   width: 0.1, // Underline thickness
          // ),
          color: bgclr,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)),
          boxShadow: [
            BoxShadow(
                color: shadclr,
                blurRadius: 25,
                offset: Offset(0, 5),
                spreadRadius: 0)
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image(image: biosimag, fit: BoxFit.fill),
        ),
        SizedBox(
          height: 50,
          child: FittedBox(
            child: Text(
              'CHALLENGES',
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: txtclr,
                    letterSpacing: 0.5,
                    fontSize: 50,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  ClipRRect containerone(double hei, double wid) {
    return ClipRRect(
      clipBehavior: Clip.none,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Container(
          height: hei,
          width: wid,
          decoration: BoxDecoration(
              color: boxclr,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    color: shadclr,
                    blurRadius: 25,
                    offset: Offset(5, 5),
                    spreadRadius: 0)
              ]),
          child: ElevatedButton(
            onPressed: () {
              if (derk == 0) {
                setState(() {
                  derk = 1;
                  biosimag = AssetImage("assets/biosb.png");
                  txtclr = Colors.black87;
                  hbgcolor = Colors.grey.shade200;
                  boxclr = Colors.grey.shade200;
                  shadclr = Colors.black54;
                  bgclr = Colors.grey.shade200;
                });
              } else {
                setState(() {
                  derk = 0;
                  biosimag = AssetImage("assets/biosw.png");
                  txtclr = Colors.white;
                  hbgcolor = Colors.grey.shade900;
                  boxclr = Colors.grey.shade800;
                  shadclr = Colors.grey.shade100.withAlpha(10);
                  bgclr = Colors.grey.shade900;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              // side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
              primary: boxclr,
            ),
            child: Text("$wid", style: TextStyle(color: txtclr)),
          )),
    );
  }

  ClipRRect containertwo(double hei, double wid) {
    return ClipRRect(
      clipBehavior: Clip.none,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Container(
          height: hei,
          width: wid,
          decoration: BoxDecoration(
              color: boxclr,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    color: shadclr,
                    blurRadius: 25,
                    offset: Offset(5, 5),
                    spreadRadius: 0)
              ]),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              // side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.5),
              primary: boxclr,
            ),
            child: Text("hello", style: TextStyle(color: txtclr)),
            onPressed: () {},
          )),
    );
  }

  ClipRRect containerthree(double hei, double wid) {
    return ClipRRect(
      clipBehavior: Clip.none,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Container(
          decoration: BoxDecoration(
              color: boxclr,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    color: shadclr,
                    blurRadius: 25,
                    offset: Offset(5, 5),
                    spreadRadius: 0)
              ]),
          height: hei,
          width: wid,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              // side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.5),
              primary: boxclr,
            ),
            child: Text("$hei", style: TextStyle(color: txtclr)),
            onPressed: () {},
          )),
    );
  }

  ClipRRect containerfour(double hei, double wid) {
    return ClipRRect(
      clipBehavior: Clip.none,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.all(0),
        height: hei,
        width: wid,
        decoration: BoxDecoration(
            color: boxclr,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  color: shadclr,
                  blurRadius: 25,
                  offset: Offset(5, 5),
                  spreadRadius: 0)
            ]),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            // side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.5),
            primary: boxclr,
          ),
          child: Image(
              image: AssetImage("assets/final.jpg"), fit: BoxFit.fitHeight),
          onPressed: () {},
        ),
      ),
    );
  }
}
