import 'package:flutter/material.dart';
import 'package:poke_api/details_page.dart';
import 'package:poke_api/services/remote_service.dart';
import 'models/model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

Post? posts;
var isLoaded = false;

  @override

  void initState(){
    super.initState();

    getData();
  }

getData() async {
  posts = await RemoteService().getPost();
  if (posts != null) {
    setState((){
      isLoaded = true;
    });
  }
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pokedex')),
        backgroundColor: Colors.black,
      ),
      // backgroundColor: Colors.black,
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
            child: CircularProgressIndicator()),
        child: Container(
          color: Colors.black,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 8,
                childAspectRatio: 1.2,),
              itemBuilder: (BuildContext context,int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context){
                          return Details_page(posts!.pokemon[index].id, posts!.pokemon[index].num,
                              posts!.pokemon[index].name, posts!.pokemon[index].weight,
                            posts!.pokemon[index].img,);
                        }));
                  },
                  child:  Card(
                    margin: EdgeInsets.only(top: 0,bottom: 0),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Hero(
                            tag: 'img$index',
                            child: Image.network(posts!.pokemon[index].img,height: 90,width: 90,)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(posts!.pokemon[index].name,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    )
                  ),
                );
              }),
        ),
      ),
    );
  }
}
