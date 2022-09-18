import 'dart:ffi';

import 'package:aqark_app/src/views/shared/components/components.dart';
import 'package:aqark_app/src/views/shared/contants/contant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/components/Detalis.dart';

class DetailsPostScreen extends StatefulWidget {
  const DetailsPostScreen({Key? key}) : super(key: key);

  @override
  State<DetailsPostScreen> createState() => _DetailsPostScreenState();
}

class _DetailsPostScreenState extends State<DetailsPostScreen> {
  var DetailsContenar=TextEditingController();
  var PriceContenar=TextEditingController();
  bool StatescoloresBottuen=false;
  var ColorBottun=Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        return BuildMStor();
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 6,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
                      SizedBox(width: 300,),
                      IconButton(onPressed: ()
                      {
                        if(StatescoloresBottuen)
                        {
                          setState(() {
                            ColorBottun=Colors.blue;
                          });
                          StatescoloresBottuen = false;
                        }else
                        {

                         setState(() {
                           ColorBottun=Colors.black;
                         });
                         StatescoloresBottuen=true;
                        }
                        ;
                      },
                        icon: Icon(Icons.add_box),color: ColorBottun)

                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          standardTextStyle(
                              text: "Whitespace house",
                              size: 20,
                              color: titleHomeColor),
                          SizedBox(height: 1.0),
                          Row(
                            children: [
                              standardTextStyle(
                                  text: "Karada, Baghdad, Iraq",
                                  size: 14,
                                  color: hintfiledColor),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(

                  children: [
                    Container(
                      width: 115,
                      height: 40,
                      child: Row
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add_chart,size: 30,)),
                          SizedBox(width: 5,),
                          Text("3  Bats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                        ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 125,
                      height: 40,
                      child: Row
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add_chart,size: 30,)),
                          SizedBox(width: 5,),
                          Text("2 Bath",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      padding: EdgeInsetsDirectional.only(start: 50),
                      width: 100,
                      height: 40,
                      child: Row
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          IconButton(onPressed: (){}, icon: Icon(Icons.subdirectory_arrow_right_sharp,size: 30,)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 16),
                  child: Text("Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 16),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70
                  ),
                  child:   TextFormField(
                    maxLines: 3,
                    obscureText: false,
                    controller: DetailsContenar,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Enter the Discretion ",
                    ),
                    validator: ( value)
                    {
                      if(value !=null &&   value.length<11){
                        return "Can't to leave empty ";
                      }else {
                          return null;
                    }},
                  ),
                  ),
              ),
              SizedBox(height: 5,),
              Row
                (
                  children:
                  [
                Container(
                  padding: EdgeInsetsDirectional.only(start: 8),
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/image/x.jpg"),
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green[300],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                    SizedBox(width: 10,),
                    Text("Juliane Darks ",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 120),
                    IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
                    SizedBox(width: 10),
                    IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
                  ],
                ),
              Padding(
                padding:  EdgeInsetsDirectional.only(start: 15),
                child: Text("Price",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsetsDirectional.only(start: 15),
                child: Container(
                  width: 100,
                  height: 30,
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    controller: PriceContenar,
                    decoration: InputDecoration(
                      labelText: "Enter the price",
                    ),
                    validator: (value)
                    {
                      if (value != null )
                      {
                        return "can't not add this price ";
                      }
                      return null ;
                    },

                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
    }
  Widget BuildMStor() {
    return
      Container
        (
          child: Row
            (
            children:
            [
              Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image/photo.jpg',
                  )),

              ],
          ),
        );



  }

  }
