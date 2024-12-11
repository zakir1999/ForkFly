import 'package:flutter/material.dart';
import 'package:food/pages/home.dart';
import 'package:food/widget/widget_support.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60,left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap:(){
                Navigator.pop(context);
                  },
                child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
            Image.asset("images/ice-cream1.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,),
          SizedBox(height: 20.0,),

            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vanilla ice-cream",style: AppWidget.semiBoldTextFeildStyle(),),
                    Text("Fresh and Healthy",style: AppWidget.boldTextFeildStyle(),),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    if(a>1){
                      a--;
                    }

                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                  child: Icon(Icons.remove,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(a.toString(),style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    a++;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )

              ],
            ),
            SizedBox(height: 20.0,),
            Text("Here we explain all about this about this Food and it's taste.How to make this food and all gradient.",style: AppWidget.LightTextFeildStyle(),),
            SizedBox(height: 20,),
            Row(children: [
              Text("Delivery Time",style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(width: 20.0,),
              Icon(Icons.alarm_add_outlined,color: Colors.black),
              SizedBox(width: 5.0,),
              Text("20 min",style: AppWidget.semiBoldTextFeildStyle(),),
            ],),
            Spacer(),
            Padding(padding: const EdgeInsets.only(bottom: 40.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total price",style: AppWidget.semiBoldTextFeildStyle(),),
                  Text("\$20",style: AppWidget.boldTextFeildStyle(),),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width/2,


                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 16.0,fontFamily: "poppins"),),
                    SizedBox(width: 30.0,),

                    Container(padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),),
                    SizedBox(width: 10.0,)

                  ],
                ),
              )
            ],

            )

            )
          ],
        ),
      ),
    );
  }
}
