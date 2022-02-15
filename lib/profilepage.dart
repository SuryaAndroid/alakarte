
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final _formKey = GlobalKey<FormState>();

  Color red = Color(0xffDB90000);
  Color grey = Color(0xff7D7699);
  Color white = Color(0xffFFFFFF);
  Color black = Color(0xff000000);
  bool _switchValue = false;
  final double coverHeight = 200;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: red,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.menu),
          ),
          title: Text('PROFILEPAGE'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height*0.9,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    color: grey,
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                    ),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 100),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: grey,
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color:black,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 220),
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text('Profilename'
                            ,textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
              Container(
                   color: white,
                   child: DefaultTabController(
                       length: 2,
                       child: Column(
                         children: [
                           Container(
                             child: TabBar(tabs:[ Tab(child: Text('Profile Detials',style: TextStyle(fontSize: 16,color: black),),),
                               Tab(child: Text('Settings',style: TextStyle(fontSize: 16,color:black),),)]),

                           ),
                           Card(
                             child: Container(
                               margin: EdgeInsets.all(15),
                               width: MediaQuery.of(context).size.width,
                               height: MediaQuery.of(context).size.height*0.4,
                               child: TabBarView(children: [
                                 SingleChildScrollView(
                                   child: Container(
                                     child: Form(
                                       key: _formKey,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           TextFormField(
                                             // controller: name,
                                             decoration: const InputDecoration(
                                                 border: UnderlineInputBorder(),
                                                 hintText: 'Name',
                                                 labelText: 'Name',
                                                 prefixIcon: Icon(Icons.person)
                                             ),
                                             //  validator: uname,
                                           ),
                                           TextFormField(
                                             // controller: name,
                                             decoration: const InputDecoration(
                                                 border: UnderlineInputBorder(),
                                                 hintText: 'email',
                                                 labelText: 'Email',
                                                 prefixIcon: Icon(Icons.email)
                                             ),
                                             //  validator: uname,
                                           ),
                                           TextFormField(
                                             // controller: name,
                                             decoration: const InputDecoration(
                                                 border: UnderlineInputBorder(),
                                                 hintText: 'phonenumber',
                                                 labelText: 'phonenumber',
                                                 prefixIcon: Icon(Icons.phone)
                                             ),
                                             //  validator: uname,
                                           ),
                                           TextFormField(
                                             // controller: name,
                                             decoration: const InputDecoration(
                                                 border: UnderlineInputBorder(),
                                                 hintText: 'DOB',
                                                 labelText: 'DOB',
                                                 prefixIcon: Icon(Icons.calendar_today )
                                             ),
                                             //  validator: uname,
                                           ),
                                           TextFormField(
                                             // controller: name,
                                             decoration: const InputDecoration(
                                                 border: UnderlineInputBorder(),
                                                 hintText: 'Sex',
                                                 labelText: 'Sex',
                                                 prefixIcon: Icon(Icons.people)
                                             ),
                                             //  validator: uname,
                                           ),
                                           SizedBox(height: 10,),
                                           Container(
                                               color: red,
                                               child: FlatButton(onPressed: (){},child: Text('Edit Profile',style: TextStyle(color: white,fontSize: 17),),))
                                         ],
                                       ),
                                     ),



                                   ),
                                 ),
                                 SingleChildScrollView(
                                   child: Container(
                                       child: Column(
                                         children:<Widget> [
                                           ListTile(
                                             title: Text('Notifications'),
                                             trailing: CupertinoSwitch(
                                               activeColor: Colors.green,
                                               value: _switchValue,
                                               onChanged: (value) {
                                                 setState(() {
                                                   _switchValue = value;
                                                 });
                                               },
                                             ),
                                           ),
                                           ListTile(
                                             title: Text('Password Reset'),
                                             trailing: Container(
                                               margin:EdgeInsets.only(left: 55,),
                                               child: GestureDetector(
                                                   child: Icon(Icons.arrow_forward_ios,size: 18,color: Colors.grey,)
                                               ),
                                             ),
                                           ),
                                           ListTile(
                                             title: Text('Location'),
                                             subtitle: Text("1/4 vellandipalaym , Thekkalur , Avinashi",style: TextStyle(fontSize: 13),),
                                             trailing: Container(
                                               margin:EdgeInsets.only(left: 55,),
                                               child: GestureDetector(
                                                   onTap: (){
                                                     // Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationScreen()));
                                                   },
                                                   child: Icon(Icons.arrow_forward_ios,size: 18,color: Colors.grey,)
                                               ),
                                             ),
                                           ),
                                         ],
                                       )
                                   ),
                                 ),
                               ]),
                               ))],
                       ),
                   )

                    )],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
