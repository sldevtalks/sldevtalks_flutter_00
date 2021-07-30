import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutArguments {
  final String name;

  AboutArguments({required this.name});
}

class About extends StatefulWidget {
  static const routeName = "/about";
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  int count = 0;

  void onIncrement() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AboutArguments args =
        ModalRoute.of(context)?.settings.arguments as AboutArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text(
              'About Page ${args.name}',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'The count is: $count',
              style: GoogleFonts.chilanka(fontSize: 30),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop("From about");
                },
                child: const Text("Home"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: onIncrement,
      ),
    );
  }
}
