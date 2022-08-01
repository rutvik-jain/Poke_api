import 'package:flutter/material.dart';

class Details_page extends StatefulWidget {
  int id;
  String num;
  String name;
  String img;
  String weight;
  Details_page(this.id,this.num,this.name,this.weight,this.img);

  @override
  State<Details_page> createState() => _Details_pageState();
}

class _Details_pageState extends State<Details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Details'),
      ),

      body: Container(
        color: Colors.black,
        child: Card(
          margin: EdgeInsets.only(bottom: 250,top: 80,right: 25,left: 25),
          color: Colors.white,
          child: Column(
            children: [
              Hero(
                tag: 'img1',
                child: Align(
                  alignment: Alignment.center,
                    heightFactor: 0,
                    child: Image.network(widget.img)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
