import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Fonts',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: FontTestPage(),
    );
  }
}

class FontTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
          backgroundColor: Color(0xffFAFAFE),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The beginning of something great",
                      style:
                          TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "There are bees trapped into the walls of an abandoned home."
                        " There are ghosts trapped in the attic, swaying to their hum."
                        " There are flies trapped on a glue strip, beating their wings "
                        "in anger. There’s a girl in the kitchen, trying to release "
                        "them. She pulls the flies’ transparent wings—they "
                        "come off in her fingers.",
                        style: GoogleFonts.abel()),
                    SizedBox(height: 20),
                    Text(
                        "There are bees trapped into the walls of an abandoned home."
                        " There are ghosts trapped in the attic, swaying to their hum."
                        " There are flies trapped on a glue strip, beating their wings "
                        "in anger. There’s a girl in the kitchen, trying to release "
                        "them. She pulls the flies’ transparent wings—they "
                        "come off in her fingers.",
                        style: TextStyle(
                            fontSize: 16))
                  ],
                ),
              ))
            ],
          )),
    );
  }
}

String imageUrl = "https://images.unsplash.com/photo-1511548774318-"
    "563182fe8d03?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=r"
    "b-1.2.1&auto=format&fit=crop&w=1350&q=80";
