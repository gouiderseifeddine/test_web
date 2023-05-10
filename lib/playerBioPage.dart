import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class PlayerBioPage extends StatefulWidget {
  const PlayerBioPage({Key? key}) : super(key: key);

  @override
  _PlayerBioPageState createState() => _PlayerBioPageState();
}

class _PlayerBioPageState extends State<PlayerBioPage> {

  late double? scoreValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scoreValue = 60;
  }

  @override
  void didChangeDependencies() {
    SizeConfig().init(context);

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {

    double? defaultHeight = SizeConfig.screenHeight;
    double? defaultWidth = SizeConfig.screenWidth;
    double? defaultSize = SizeConfig.defaultSize;




    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff91d2fc), Color(0xffd6f6fb)],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
            ),
          ),
          Align(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.85,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.95,
              color: Color(0xFF0d0f1e),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 15,right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: defaultHeight! * 0.137,
                          width: defaultWidth! * 0.568,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(defaultSize! * 1.8),
                              border: Border.all(color: Color(0xFF282e46)),
                              color: Color(0xFF0d0f1e)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(defaultSize! * 1.8),
                                gradient:
                                LinearGradient(
                                    begin: Alignment.bottomRight, stops: [
                                  0.1,
                                  0.9
                                ], colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ])),
                            child: Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/images/logo.png"),
                                    ),
                                    SizedBox(width: defaultWidth * 0.01,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0),
                                          child: Text(
                                            "DRILLIGHT",
                                            style: TextStyle(
                                                color: Color(0xFFb1dce3),
                                                fontSize: defaultSize * 2.08,
                                                wordSpacing: 2,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          "La performance de vos joueurs ",
                                          style: TextStyle(
                                              color: Color(0xFFb1dce3),
                                              fontSize: defaultSize * 1.37,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: defaultHeight * 0.137,
                          width: defaultWidth * 0.24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xFF282e46)),
                              color: Color(0xFF0d0f1e)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient:
                                LinearGradient(
                                    begin: Alignment.bottomRight, stops: [
                                  0.1,
                                  0.9
                                ], colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ])),
                            child: Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, top: 16, right: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          "Score",
                                          style: TextStyle(
                                              color: Color(0xFFb1dce3),
                                              fontSize: defaultSize * 1.37,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          scoreValue.toString(),
                                          style: TextStyle(
                                              color: Color(0xFFb1dce3),
                                              fontSize: defaultSize * 2.08,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      itemBuilder: (context, _) =>
                                          Icon(
                                            Icons.star,
                                            color: Color(0xFFf3b2ca),
                                            size: defaultSize * 0.5,
                                          ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                        setState(() {
                                          scoreValue = rating * 20;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 15,right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: defaultHeight * 0.632,
                          width: defaultWidth * 0.568,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/d3.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Container(
                                height: defaultHeight * 0.05,
                                width: defaultWidth * 0.24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xFF282e46)),
                                    color: Color(0xFF181836)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),),
                                  child: Align(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "PERFORMANCE",
                                            style: TextStyle(
                                              wordSpacing: 3,
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0,top: 8),
                              child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      height: defaultHeight * 0.2748,
                                      width: defaultWidth*0.228,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          performanceCard(Color(0xFF181836),"Pied","25"),
                                          SizedBox(width:defaultWidth*0.019,),
                                          performanceCard(Color(0xFF181836),"Genou","05")
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: defaultHeight * 0.2748,
                                      width: defaultWidth*0.228,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          performanceCard(Color(0xFF181836),"Tete","30"),
                                          SizedBox(width:defaultWidth*0.019,),
                                          performanceCard(Color(0xFF181836),"Vitesse","80")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,top: 40),
                    
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Ranking",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 5,),
                            Text("65 %",style: TextStyle(fontSize: 30,color: Color(0xFFf4b2ca)),)
                          ],
                        ),
                        SizedBox(width: 18,),
                        LinearPercentIndicator(
                          padding: const EdgeInsets.only(right: 8),
                          barRadius: Radius.circular(20),
                          backgroundColor:Color(0xFF242a44),
                          progressColor: const Color(0xFFb1dce3),
                          width: MediaQuery.of(context).size.width * 0.74,
                          lineHeight: 40,
                          percent: 65 / 100,

                        ),
                      ],
                    ),
                  ),



                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget performanceCard(color,text,value){
    return AspectRatio(
      aspectRatio:1.3/1.7,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color
          //insert image
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1,0.9],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 24
                  ),
                ),
                SizedBox(height: 30,),
                Image.asset("assets/images/dd.png",scale:6,color: Color(0xFFb1dce3),),
                Spacer(),
                Text(
                  value,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    // On iPhone 11 the defaultSize = 10 almost
    // So if the screen size increase or decrease then our defaultSize also vary
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;


  }
}