import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final String firstregistration;
  final String color;
  final String make;
  final String body;
  final String doors;
  final String longText;
  final String? image;
    const DetailsPage({Key? key,required this.title,required this.firstregistration,
     required this.color,required this.make,required this.body,required this.doors,
     required this.longText,required this.image}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
   bool _isLiked = false;
   var favColor = Colors.black87;
   var favColorLiked = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text(widget.title),),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width,
                     child: Image(image: AssetImage(widget.image!),fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(widget.title,style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(child: Container()),
                      IconButton(onPressed: (){
                        setState(() {
                          _isLiked =!_isLiked;
                        });
                      }, icon: !_isLiked ? Icon(Icons.star_outline_rounded, size: 35, ) : ImageIcon( AssetImage('assets/star.png',),color: Colors.amber,size: 28,)),
                      
                      IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,size: 30)),
                      const SizedBox(width: 30,),
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
                  color: Colors.grey,
                  thickness: 1,
                  endIndent: 15,
                  indent: 15,
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text('Make', style: TextStyle(fontSize: 20,),),
                        Text('Model', style: TextStyle(fontSize: 20, height: 2),),
                        Text('First registration', style: TextStyle(fontSize: 20, height: 2),),
                        Text('Color', style: TextStyle(fontSize: 20, height: 2),),
                        Text('body', style: TextStyle(fontSize: 20, height: 2),),
                        Text('doors', style: TextStyle(fontSize: 20, height: 2),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.make, style: const TextStyle(fontSize: 20),),
                        Text(widget.title, style: const TextStyle(fontSize: 20, height: 2),),
                        Text(widget.firstregistration, style: const TextStyle(fontSize: 20, height: 2),),
                        Text(widget.color, style: const TextStyle(fontSize: 20, height: 2),),
                        Text(widget.body, style: const TextStyle(fontSize: 20, height: 2),),
                        Text(widget.doors, style: const TextStyle(fontSize: 20, height: 2),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(
                  height: 20,
                  color: Colors.grey,
                  thickness: 1,
                  endIndent: 15,
                  indent: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width-30,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                    child: const Text("Richard McClintock, a Latin professor at Ha"
                        "mpden-Sydney College in Virginia, looked up one of the more obscure Latin wor"
                        "ds, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered", style: TextStyle(
                      fontSize: 18
                    ),)),
                const SizedBox(height: 60,),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){}, child: Row(
                    children: const[
                      Icon(Icons.message),
                      SizedBox(width: 10,),
                      Text("Messege", style: TextStyle(fontSize: 20),),
                    ],)),
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.phone),
                      Text("Contact", style: TextStyle(fontSize: 20),),
                    ],)),
                )
              ],
            ),
          ),)
        ],
      ),
      
    );
  }
}
