import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/contents/images.dart';
import 'package:news_app/screens/detail_news.dart';

import 'filtr_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Новости", style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FiltrScreen()));
              },
              child: Text("Фильтр",
                  style: TextStyle(
                    color: Colors.blue,
                  )))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              height: 250,
              child: Column(
                children: [
                  Image.asset(
                    AppImages().Rectangle,
                    width: 379,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Незаконное строительство",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 260,
              child: Column(
                children: [
                  Image.asset(
                    AppImages().Rectangle,
                    width: 379,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetalNews()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Управление по контролю, надзору\n за водными ресурсами ...",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
