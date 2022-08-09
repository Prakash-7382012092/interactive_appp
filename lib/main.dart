import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget titlesection = Container(
        child:Row(

          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Ramoji Film City",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
                  Text("Ramoji Film City",style: TextStyle(fontSize: 15),)
                ],
              ),
            ),
            Favour(),

          ],
        )
    );
    Color color=Theme.of(context).primaryColor;
    Widget buttonsection = SizedBox(
      child: Row(

        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          buildbtn(color, Icons.tour, 'Tour'),
          buildbtn(color,Icons.train,'Teain'),
          buildbtn(color,Icons.restaurant_menu_sharp,'Food')
        ],

      ),
    );
    Widget textsection=Container(
      padding: EdgeInsets.all(20),
      child: Text("Ramoji Film City is India’s only thematic holiday destination with cine-magic. Certified as the World’s Largest Film Studio complex by Guinness World Records, it spreads across 2000 acres. Millions of tourists visit the amusement park to live their dream vacation. It is a perfect getaway and theme park that stimulates the mind and heart alike.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 18),),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ramoji Film City"),backgroundColor: Colors.red,),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ClipRRect(
              child:Image.asset('asset/images/3.jpg'),
              borderRadius: BorderRadius.circular(20),
            ),
            Padding(padding:EdgeInsets.only(top:20)),

            titlesection,
            Padding(padding:EdgeInsets.only(bottom:20)),
            buttonsection,
            textsection,
          ],
        ),
      ),
    );
  }
}
class Favour extends StatefulWidget{
  @override
  State<Favour> createState() => stafav();
}

class stafav extends State<Favour>{
  bool fav=true;
  int count = 41;
  void toogle(){
    setState((){
      if(fav){
        count -= 1;
        fav = false;
      }else{
        count +=1;
        fav =true;
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return  Row(
      children: [
        Container(
          child:IconButton(
            onPressed: toogle,
            icon: (fav ? Icon(Icons.star,color: Colors.red,): Icon(Icons.star_border,color: Colors.red)),
          ),
        ),
        SizedBox(
          child: Text('$count'),
        )
      ],
    );
  }
}

Column buildbtn(Color color, IconData icon, String label){
  return Column(
    children: [
      Icon(icon,color: color,size: 20,),
      Text(label,style: TextStyle(fontSize: 15),),
    ],
  );
}
