import 'package:flutter/cupertino.dart';
import 'package:flutter2/animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class story extends StatefulWidget {
  @override
  _storyState createState() => _storyState();
}

class _storyState extends State<story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:Color(0xFFFFBF05),
        title:Center(
          child: Container(
            child: Text("Share your heroic story", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color:Color(0xFFFFBF05).withOpacity(.8)))
            ),
          ),
        ),
      ),

      body:SingleChildScrollView(

        child: Container(
          child: Column(
            children: <Widget>[
              Container(
               margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/st.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(bottom:270,right: 230),
                        child: Center(
                          child:FlatButton(
                            child: Text('Profile', style: TextStyle(color: Color(0xFFFFBF05),fontSize: 20,fontStyle: FontStyle.italic),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                            onPressed: () {
                            },
                          ),
                        ),
                      )),
                    ),
                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(bottom:270,left: 230),
                        child: Center(
                          child:FlatButton(
                            child: Text('Story', style: TextStyle(color: Color(0xFFFFBF05),fontSize: 20,fontStyle: FontStyle.italic),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                            onPressed: () {
                            },
                          ),
                        ),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(1.8, Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(-4, 4),
                            blurRadius: 10,
                            color: Color(0xFFFFBF05).withOpacity(.6),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Color(0xFFFFBF05).withOpacity(.10),))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top:35.0,bottom: 35,),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color:Color(0xFFFFBF05).withOpacity(.10)))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " Your Story",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                    SizedBox(height: 30,),
                    FadeAnimation(2, Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffbbd5c),
                      ),
                      child: Center(
                        child: Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    )),
                    SizedBox(height: 70,),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}