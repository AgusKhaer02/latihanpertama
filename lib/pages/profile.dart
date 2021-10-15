import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //
        child: Column(
          children: [
            Container(
              height: 300, //
              child: Column(
                children: [
                  Expanded(
                    flex: 2, //
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://www.randomlists.com/img/people/john_bon_jovi.webp",
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),

                        Column(
                          children: [
                            Text("Elliot Thomson"),
                            Text("UI/UX Designer"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1, //
                    child: Row(
                      children: [],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
