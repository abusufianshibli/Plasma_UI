import 'package:flutter/cupertino.dart';
import 'package:flutter2/animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/story.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBF05),
        title:Center(
          child: Container(
            child: Text("Edit Profile", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color:Color(0xFFFFBF05).withOpacity(.8)))
            ),
          ),
        ),


      ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(

              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top:20,),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/dn.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(bottom: 270,right: 200),
                          child: Center(
                            child:FlatButton(
                              child: Text('Profile', style: TextStyle(color: Color(0xFFFFBF05),fontSize: 20,fontStyle: FontStyle.italic),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),
                              onPressed: () {},
                            ),
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(bottom: 270,left: 200),
                          child: Center(
                            child:FlatButton(
                              child: Text('Story', style: TextStyle(color: Color(0xFFFFBF05),fontSize: 20,fontStyle: FontStyle.italic,
                              ),
                              ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => story()),
                                );
                              },
                            ),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:.2,left: 35,right: 35),
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
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color:Color(0xFFFFBF05).withOpacity(.10)))
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
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color:Color(0xFFFFBF05).withOpacity(.10)))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Blood Group",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Color(0xFFFFBF05).withOpacity(.10)))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Phone number",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Location",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
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
                          child: Text("Save", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ,fontSize: 20),),
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