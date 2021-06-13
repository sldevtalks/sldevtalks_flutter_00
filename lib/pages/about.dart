import 'package:flutter/material.dart';

class AboutArguments {
  final String name;

  AboutArguments({required this.name});
}

class About extends StatelessWidget {
  static const routeName = "/about";
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AboutArguments args =
        ModalRoute.of(context)?.settings.arguments as AboutArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'About Page ${args.name}',
              style: Theme.of(context).textTheme.headline3,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop("From about");
                },
                child: Text("Home"))
          ],
        ),
      ),
    );
  }
}
