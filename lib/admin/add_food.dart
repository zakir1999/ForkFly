import 'package:flutter/material.dart';
import 'package:food/widget/widget_support.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  final List<String> fooditems=['Ice-Cream','Burger','Juice','Pizza'];
  String? value;
  TextEditingController namecontroller=new TextEditingController();
  TextEditingController pricecontroler=new TextEditingController();
  TextEditingController detailcontroler=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF373866),
            )),
        centerTitle: true,
        title: Text(
          "Add Item",
          style: AppWidget.HeadlineTextFeildStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload the Item Picture",
                style: AppWidget.semiBoldTextFeildStyle(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.deepOrangeAccent, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Item Name",style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(border: InputBorder.none,hintText:"Enter item name",hintStyle: AppWidget.LightTextFeildStyle()),
        
                ),
              ),
              SizedBox(height: 20,),
              Text("Enter Item price",style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: pricecontroler,
                  decoration: InputDecoration(border: InputBorder.none,hintText:"Enter item price",hintStyle: AppWidget.LightTextFeildStyle()),
        
                ),
              ),
              SizedBox(height: 20,),
              Text("Details",style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  maxLines: 4,
                  controller:detailcontroler,
                  decoration: InputDecoration(border: InputBorder.none,hintText:"Enter item details",hintStyle: AppWidget.LightTextFeildStyle()),
        
                ),
              ),
              Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      items: fooditems
                          .map((item)=>DropdownMenuItem<String>(
                          value: item,
                          child: Text('Select categories',style: TextStyle(fontSize: 18.0,color: Colors.black),
                          ))).toList(),
                onChanged : ((value)=>setState(() {
                  this.value=value;
                })),
                    dropdownColor: Colors.white,
                    hint: Text('Select Category'),
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                    value: value,
                ))),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  //uploadItem();
                },
                child: Center(
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
