import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailsPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text(title),),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
               width: MediaQuery.of(context).size.width,
                 child: Image(image: AssetImage(image!),fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                   Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(title,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 30,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined,size: 30)),
                  SizedBox(width: 30,),
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
                    Text(make, style: TextStyle(fontSize: 20),),
                    Text(title, style: TextStyle(fontSize: 20, height: 2),),
                    Text(firstregistration, style: TextStyle(fontSize: 20, height: 2),),
                    Text(color, style: TextStyle(fontSize: 20, height: 2),),
                    Text(body, style: TextStyle(fontSize: 20, height: 2),),
                    Text(doors, style: TextStyle(fontSize: 20, height: 2),),
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
              padding: EdgeInsets.all(10),
                child: Text("Richard McClintock, a Latin professor at Ha"
                    "mpden-Sydney College in Virginia, looked up one of the more obscure Latin wor"
                    "ds, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered", style: TextStyle(
                  fontSize: 18
                ),)),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){}, child: Row(
                    children: [
                          Icon(Icons.message),
                          SizedBox(width: 10,),
                          Text("Messege", style: TextStyle(fontSize: 20),),
                  ],)),
                ),
                Container(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Icon(Icons.phone),
                          Text("Contact", style: TextStyle(fontSize: 20),),
                    ],)),
                )
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
