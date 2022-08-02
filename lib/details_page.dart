import 'package:flutter/material.dart';

class Details_page extends StatefulWidget {
  int id;
  int index;
  String name;
  String img;
  String weight;
  Details_page(this.id,this.name,this.weight,this.img,this.index);

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
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.only(bottom: 10,top: 100,right: 25,left: 25),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              child: Column(
                children: [
                  Hero(
                    transitionOnUserGestures: true,
                    tag: 'image'+widget.index.toString(),
                    child: Align(
                      alignment: Alignment.center,
                        heightFactor: 0,
                        child: Image.network(widget.img)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(widget.name,
                      style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,
                      fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120,top: 5),
                        child: Container(
                          height: 25,width: 40,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text('FIRE',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 10),
                        child: Container(
                          height: 25,width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text('FLYING',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 10),
                        child: Container(
                          width: 115,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                            child: Center(
                              child: Text('WEIGHT ' + widget.weight,
                                style: TextStyle(color: Colors.amber),),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                            width: 50,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text('ID ' + widget.id.toString(),
                                style: TextStyle(color: Colors.greenAccent),),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 190,
              width: 360,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,right: 200),
                      child: Text('Description:-',style: TextStyle(
                        fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      height: 150,
                      width: 180,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text('spits the fire that is hot enough to melt boulders.'
                            'Known to cause forest fires unintetionally.',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                        color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
