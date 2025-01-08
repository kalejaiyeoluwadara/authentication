import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = TextEditingController();
  void clear() {
    setState(() {
      _controller.clear();
    });
  }

  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Textinput
            Expanded(
              child: Container(
                child: Center(
                  child: Text(userPost),
                ),
              ),
            ),
            // Text field
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon:
                    IconButton(onPressed: clear, icon: const Icon(Icons.clear)),
                hintText: 'What\'s on your mind',
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost = _controller.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'send',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
