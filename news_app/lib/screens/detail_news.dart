import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/contents/images.dart';

class DetalNews extends StatefulWidget {
  DetalNews({Key? key}) : super(key: key);

  @override
  _DetalNewsState createState() => _DetalNewsState();
}

class _DetalNewsState extends State<DetalNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
                "Управление по контролю, надзору за водными ресурсами и объектами (далее УКНВРиО) 29 июля 2020 года провело рабочее видео-совещание.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Дата 24.04.20",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              AppImages().sec,
              width: 379,
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(AppImages().three, width: 379),
            SizedBox(
              height: 10,
            ),
            Text(
                "Управление по контролю, надзору за водными ресурсами и объектами (далее УКНВРиО) 29 июля 2020 года в председательстве начальника УКНВРиО Артыкбаева С.Ж., в конференц-зале ГИЭТБ провело рабочее  видео-совещание-обучение с участием инспекторов Межрегиональных управлений (далее МРУ) по контролю, надзору за водными ресурсами и объектами.",
                style: TextStyle(fontSize: 14))
          ],
        ),
      ),
    );
  }
}
