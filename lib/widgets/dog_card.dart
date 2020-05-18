import 'package:flutter/material.dart';
import 'package:pet_app_ui/theme/constant.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: primary, blurRadius: 0.5)
                    ]),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child:  Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text("Lola is lost in your neighborhood!Help us find her!",style:contentWhite,),
                    ),
                  ),
              ),
          ),
            Container(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset("assets/images/lolo_dog.png"),
          )
         
        ],
      ),
    );
  }
}