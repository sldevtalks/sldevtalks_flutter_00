import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sldevtalks_flutter_00/pages/about.dart';
import 'package:sldevtalks_flutter_00/pages/rockets.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";
  final Function(bool)? toggleDarkMode;
  final bool? isDark;

  const Home({Key? key, this.toggleDarkMode, this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SLDevTalks"),
        actions: [
          CupertinoSwitch(value: isDark ?? false, onChanged: toggleDarkMode)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 0,
            width: double.infinity,
          ),
          const Image(
            image: AssetImage("assets/images/logo.png"),
            width: 90,
          ),
          const Text(
            "ආයුබෝවන් SLDevTalks!",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Text(
            "Welcome to our live show.",
            style: GoogleFonts.courgette(
              fontSize: 22,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await Navigator.of(context).pushNamed(About.routeName,
                  arguments: AboutArguments(name: "Devs")) as String;
            },
            child: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.ac_unit),
                  Flexible(child: Text(" About")),
                ],
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Rockets.routeName);
            },
            child: const Text("Rockets"),
          )
        ],
      ),
    );
  }
}
