import 'package:alakarte/about_us.dart';
import 'package:alakarte/food_ctgry_tabview.dart';
import 'package:alakarte/home_activity.dart';
import 'package:alakarte/homepage.dart';
import 'package:alakarte/introscreen.dart';
import 'package:alakarte/menuPage.dart';
import 'package:alakarte/notification_screen.dart';
import 'package:alakarte/orderhistory.dart';
import 'package:alakarte/profilepage.dart';
import 'package:alakarte/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  Color red = Color(0xffDB90000);
  Color grey = Color(0xff7EABB7);
  Color white = Color(0xffFFFFFF);
  Color black = Color(0xff000000);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      margin: EdgeInsets.only(top: 60,left: 7,bottom: 15,right: 7,),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close),iconSize: 35,color: Colors.black38,)
                        ),
                      ),
                    ]
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),),
                ),
                Container(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        leading: Icon(Icons.home,color: black,),
                        title: Text('HOME'),
                      ),
                      Divider(
                        height: 1,
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
                        },
                        leading: Icon(Icons.dining_rounded,color: black,),
                        title: Text('MENU'),
                      ),
                      Divider(height: 2,),
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                        },
                        leading: Icon(Icons.person,color: black,),
                        title: Text('PROFILE'),
                      ),
                      Divider(height: 2,),
                      ListTile(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => WishList()));
                        },
                        leading: Icon(Icons.description,color: black,),
                        title: Text('WISHLIST'),
                      ),
                      Divider(height: 2,),
                      ListTile(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => OrderHistory()));
                        },
                        leading: Icon(Icons.ballot,color: black,),
                        title: Text('ORDER HISTORY'),
                      ),
                      Divider(height: 2,),
                      ListTile(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => AboutUs()));
                        },
                        leading: Icon(Icons.people,color: black,),
                        title: Text('ABOUT US'),
                      ),
                      Divider(height: 2,),
                      ListTile(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                        },
                        leading: Icon(Icons.add_alert_rounded ,color: black,),
                        title: Text('NOTIFICATION'),
                      ),
                      Divider(height: 2,),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                child:ListTile(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => IntroScreen()));
                  },
                  leading: Icon(Icons.logout,color: black,),
                  title: Text('LOGOUT',style: TextStyle(fontSize: 16),),
                )
            ),
          ],
        ),
      ),
    );
  }
}
