import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "lib/assets/logo.svg",
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome to Notify Tune Plus",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "A chat system powered by ai,to enable people chat and disscus about various topics in rooms ",
              style: TextStyle(color: Colors.grey[700]),
            ),
            GestureDetector(
              // onTap: Navigator.pushNamed((context), "/homepage"),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    // onTap: Navigator,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Get started"),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
