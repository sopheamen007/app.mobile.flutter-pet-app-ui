import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app_ui/theme/constant.dart';

class WalkGroupCard extends StatelessWidget {
  final String imgScr;
  final String title;
  final String location;
  final String members;
  final String orgBy;
  const WalkGroupCard({
    Key key, this.imgScr, this.title, this.location, this.members, this.orgBy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30,bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: textWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3),blurRadius: 8,offset: Offset(3, 1))]
        ),
        child: Container(
            width: 280,
            child: Column(
              children: <Widget>[
                Image.asset(imgScr),
                Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: <Widget>[
                      Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,height: 1.5),),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mapMarkerAlt,size: 17,),
                          SizedBox(width: 15,),
                          Text(location,style: contentBlack,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.users,size: 17,),
                          SizedBox(width: 15,),
                          Text(members,style: contentBlack,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.account_circle,size: 20,),
                          SizedBox(width: 15,),
                          RichText(text: 
                          TextSpan(
                            text: "Organized by ",
                            style: contentBlack,
                            children: <TextSpan>[
                              TextSpan(text: orgBy,style: TextStyle(color: primary)),
                            ]
                          )
                          )
                          // Text("Organized by Laura ",style: contentBlack,)
                        ],
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                  ),
                
              ],
            ),
          ),
      ),
    );
  }
}