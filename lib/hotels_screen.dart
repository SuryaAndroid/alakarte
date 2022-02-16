import 'package:alakarte/about_us.dart';
import 'package:alakarte/food_ctgry_tabview.dart';
import 'package:alakarte/home_activity.dart';
import 'package:alakarte/introscreen.dart';
import 'package:alakarte/menuPage.dart';
import 'package:alakarte/notification_screen.dart';
import 'package:alakarte/orderhistory.dart';
import 'package:alakarte/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hotesls extends StatefulWidget {
  const Hotesls({Key? key}) : super(key: key);

  @override
  _HoteslsState createState() => _HoteslsState();
}

class _HoteslsState extends State<Hotesls> {
  Color red = Color(0xffDB90000);
  Color black = Color(0xff000000);
  Color grey = Color(0xff7D7699);
  Color white = Color(0xffFFFFFF);

  LatLng currentMapPosition = LatLng(11.01685, 76.95583);
  GoogleMapController? _controller;
  Set<Marker> pinLocation = Set();

  bool locationView = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentMapPosition = LatLng(11.01685, 76.95583);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            //forceElevated: innerBoxIsScrolled,
            //floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: 200,
                width: double.infinity,
                child: GoogleMap(
                  zoomGesturesEnabled: true,
                  myLocationButtonEnabled: true,
                  tiltGesturesEnabled: true,
                  scrollGesturesEnabled: true,
                  rotateGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: currentMapPosition,
                    zoom: 12,
                  ),
                  /*onMapCreated: (GoogleMapController controller) {
                          _controller = controller;
                        },*/
                ),
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(6)),
              padding: EdgeInsets.only(
                left: 6,
              ),
              width: double.infinity,
              alignment: Alignment.center,
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintText: "Search",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Text(
                'Hotel list',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context , index){
                    return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeActivity()));
                          },
                          child: Card(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: new AssetImage('assets/images/idly.jpg'),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width - 110,
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        //  crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Text('Saravana Bhavan',
                                                        style: TextStyle(fontSize: 16)),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(4),
                                                      border: Border.all(),
                                                    ),
                                                    child: CircleAvatar(
                                                      radius: 3,
                                                      backgroundColor: Colors.green,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                        child: SizedBox(
                                                          height: 15,
                                                          // width: 89,
                                                          child: CustomPaint(
                                                            painter: PriceTagPaint(),
                                                            child: Center(
                                                              child: Text(
                                                                "Chettinad food",
                                                                style: TextStyle(
                                                                  fontSize: 9,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                  )
                                                ],
                                              )),
                                          Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 19,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('4.5'),
                                                  )
                                                ],
                                              )),
                                          Divider(
                                            color: black,
                                          ),
                                          Container(
                                              child: Text(
                                                '125/R.S.Puram,Coimbatore,TamilNadu 641002',
                                                style: TextStyle(fontSize: 13),
                                              )),
                                        ],
                                      ),
                                    )
                                  ])),
                        ));
                  }
              )
            ),
          ],
        ),
      ),
    ));
  }
}

class PriceTagPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Path path = Path();

    path
      ..moveTo(0, size.height * .5)
      ..lineTo(size.width * .13, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * .13, size.height)
      ..lineTo(0, size.height * .5)
      ..close();
    canvas.drawPath(path, paint);

    //* Circle
    canvas.drawCircle(
      Offset(size.width * .13, size.height * .5),
      size.height * .15,
      paint..color = Colors.white,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
