import 'dart:async';
import 'dart:convert';
import 'package:avtosell/details.dart';
import 'package:avtosell/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Timer timer;
  int counter = 0;

  List info =[];
  _initData(){
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      info = json.decode(value);

    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) => addValue());
  }
  void addValue() {
    setState(() {
      counter++;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Navbar(),
      appBar: AppBar(
        backgroundColor: Color(0xff0089d0),
        title: Text("Avtoelon"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: (){}, icon: Icon(Icons.attach_money_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: info.length,
                    itemBuilder: (_,i){
                  return SizedBox(
                    child: Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailsPage(title: info[i]["title"],color: info[i]["color"],
                              body: info[i]["body"],doors: info[i]["doors"],
                              firstregistration: info[i]["first"],make: info[i]["make"], longText: info[i]['longtext'],image: info[i]["img"],);
                          }));
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(9),
                                    height: 132,
                                    width: 170,
                                    child: Image(image: AssetImage(info[i]["img"] ), )),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(info[i]["title"] ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    Text(info[i]["text"] ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(" Color: "),
                                        Text(info[i]["color"] , style: TextStyle(fontWeight: FontWeight.bold),),
                                        Expanded(child: Container()),
                                        Text(" Price: "),
                                        Text(info[i]["cost"],  style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(width: 30,)],
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
