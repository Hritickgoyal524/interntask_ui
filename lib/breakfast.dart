import 'package:flutter/material.dart';
class Breakfast extends StatelessWidget{
List<Map> dietdata=[{"value":"340 Kcal","name":"Calories"},{"value":"6,4 g","name":"Carbs"},{"value":"15,9 g","name":"Protein"},{"value":"20,3 g","name":"Fats"}];
List<Map>listdata=[{"name":"Tomatos Cherry","weight":"60 g","calories":"14 Kcal"},{"name":"Avocado","weight":"30 g","calories":"48 Kcal"},{"name":"Cheese Bree","weight":"20 g","calories":"76 Kcal"}];
  
  Widget build(BuildContext context) {
    return Scaffold(
   body: SingleChildScrollView(child:
   Container( 
     margin: EdgeInsets.symmetric(horizontal:23,vertical: 57),
     child:Column(
     children:[   
       Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Icon(Icons.arrow_back,size:28, color: Colors.black,),
          Text("Breakfast",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          Icon(Icons.more_vert,size:28,)
        ],),),
     SizedBox(height: 65,),
     Container(
       height:200,
       width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.indigo[200].withOpacity(0.4),
         borderRadius:BorderRadius.circular(14)       ),
       child: Center(child: Image.asset("images/cart.jpg",height: 120,width: 150,fit:BoxFit.cover),),
     ),
       Container(
       margin: EdgeInsets.symmetric(vertical:38),
       height: 50,
       child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
         Column(children:[
         Text(dietdata[0]['value'],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
         Text(dietdata[0]['name'],style: TextStyle(
           fontSize: 15,
           color: Colors.grey,fontWeight: FontWeight.bold),)
         ]),
          Column(children:[
         Text(dietdata[1]['value'],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
         Text(dietdata[1]['name'],style: TextStyle(
           fontSize: 15,
           color: Colors.grey,fontWeight: FontWeight.bold),)
          ]),
         Column(children:[ Text(dietdata[2]['value'],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
         Text(dietdata[2]['name'],style: TextStyle(
           fontSize: 15,
           color: Colors.grey,fontWeight: FontWeight.bold),)
         ]),
         Column(children:[  Text(dietdata[3]['value'],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
         Text(dietdata[3]['name'],style: TextStyle(
           fontSize: 15,
           color: Colors.grey,fontWeight: FontWeight.bold),)
         ])
         
       ],)
     ) ,
  Container(
         height: 90,
         padding: EdgeInsets.symmetric(vertical:10)
,        
 decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
 
  color: Colors.pink[100],),
         width: MediaQuery.of(context).size.width,
         child: ListTile(title: Text(listdata[0]['name'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
       subtitle: Text(listdata[0]['weight'],style: TextStyle(fontSize:16,color: Colors.grey,fontWeight: FontWeight.bold),),
       trailing: Text(listdata[0]['calories'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),))
     , SizedBox(height: 23,)
       ,Container(
         height: 90,
         padding: EdgeInsets.symmetric(vertical:10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
       color: Colors.tealAccent.withOpacity(.3),),
         width: MediaQuery.of(context).size.width,
         child: ListTile(title: Text(listdata[1]['name'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
       subtitle: Text(listdata[1]['weight'],style: TextStyle(fontSize:16,color: Colors.grey,fontWeight: FontWeight.bold),),
       trailing: Text(listdata[1]['calories'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),))
      
      , SizedBox(height: 23,)
       ,Container(
         height: 90,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(13)
,          color: Colors.indigo[200].withOpacity(0.4),
         ),
         padding: EdgeInsets.symmetric(vertical:10)
         ,width: MediaQuery.of(context).size.width,
         child: ListTile(title: Text(listdata[2]['name'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
       subtitle: Text(listdata[2]['weight'],style: TextStyle(fontSize:16,color: Colors.grey,fontWeight: FontWeight.bold),),
       trailing: Text(listdata[2]['calories'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),)
  )
      ] )
       ),
     
     ) );}
}