import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(myCard());
}

class myCard extends StatefulWidget {
  const myCard({Key key}) : super(key: key);

  @override
  State<myCard> createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  void openUrl() async {
    const url = 'https://www.linkedin.com/in/gaidaa-haj/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/me.png'),
                  radius: 50,
                ),
                Text(
                  "Gaidaa Haj",
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
                ),
                Text(
                  "Computer Science and Business Administration Student",
                  style: GoogleFonts.caveat(
                      textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,10,50,0),
                  child: GestureDetector(
                    onTap: () {

                       openUrl();
                    },
                    child: Card(

                      margin: EdgeInsets.all(10),
                      child:

                      ListTile(
                        leading: Icon(Icons.email_outlined,color: Colors.teal,),
                        title: Text("gaidaahaj2@gmail.com",

                          style:GoogleFonts.caveat(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      ),
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,10,50,0),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    child:ListTile(
                      leading: Text("in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),),
                      title: Text("Gaidaa Haj",
                        style:GoogleFonts.caveat(
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,10,50,0),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    child:ListTile(
                      leading: Icon(Icons.phone,color: Colors.teal,),
                      title: Text("0586403691",
                        style:GoogleFonts.caveat(
                      textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,10,50,0),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    child:ListTile(
                        leading: Text("GitHub",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),),
                        title: Text("Apps4c",
                          style:GoogleFonts.caveat(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),)
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
