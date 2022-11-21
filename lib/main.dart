import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: id_project(),
));
class id_project extends StatefulWidget {
  const id_project({Key? key}) : super(key: key);

  @override
  State<id_project> createState() => _id_projectState();
}

class _id_projectState extends State<id_project> {
  int ninjalevel=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:  AppBar(
        title:  Text('My id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel+=1;

          });


        },
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [

              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQE5NMnoHSQKGw/profile-displayphoto-shrink_800_800/0/1604598329261?e=1673481600&v=beta&t=vZgf28ZmBNO4r-mVqJdKJWkoTVI1K3W3DhcFCmE0ia0'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],

              ),

              Text(
                'NAME',

                style:  TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Nishant Omhare',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'shubhomhare@gmail.com',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),

                  )
                ],
              ),
              SizedBox(height: 30.0,),
              Text(
                '$ninjalevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 30.0,

                ),
              ),
            ],
          ),
        ),
      );
  }
}


