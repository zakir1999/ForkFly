import 'package:flutter/material.dart';
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
        margin: const EdgeInsets.only(top: 60,left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap:(){
                Navigator.pop(context);
                  },
                child: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
            Image.asset("images/ice-cream1.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,),
          const SizedBox(height: 20.0,),

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
                const Spacer(),
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
                  child: const Icon(Icons.remove,color: Colors.white,),
                  ),
                ),
                const SizedBox(width: 10.0,),
                Text(a.toString(),style: AppWidget.semiBoldTextFeildStyle(),),
                const SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    a++;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                    child: const Icon(Icons.add,color: Colors.white,),
                  ),
                )

              ],
            ),
            const SizedBox(height: 20.0,),
            Text("Here we explain all about this about this Food and it's taste.How to make this food and all gradient.",style: AppWidget.LightTextFeildStyle(),),
            const SizedBox(height: 20,),
            Row(children: [
              Text("Delivery Time",style: AppWidget.semiBoldTextFeildStyle(),),
              const SizedBox(width: 20.0,),
              const Icon(Icons.alarm_add_outlined,color: Colors.black),
              const SizedBox(width: 5.0,),
              Text("20 min",style: AppWidget.semiBoldTextFeildStyle(),),
            ],),
            const Spacer(),
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


                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    const Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 16.0,fontFamily: "poppins"),),
                    const SizedBox(width: 30.0,),

                    Container(padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.shopping_cart_outlined,color: Colors.white,),),
                    const SizedBox(width: 10.0,)

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
