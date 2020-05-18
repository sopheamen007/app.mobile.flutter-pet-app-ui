import 'package:flutter/material.dart';
import 'package:pet_app_ui/theme/constant.dart';
import 'package:pet_app_ui/widgets/search_dog_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
                  child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Find anything you need for your pets",
                  textAlign: TextAlign.center,
                  style: appSubTitle,
                )),
            SizedBox(
              height: 30,
            ),
          SearchCardDog(itemOneTitle: "Vet \nClinics",itemOneImg: "assets/images/card_1.png",itemOneBgColor: card1,itemOneTextColor: textWhite,
          itemTwoTitle: "Places \nto eat",itemTwoImg: "assets/images/card_2.png",itemTwoBgColor: card2,itemTwoTextColor: textBlack,),
          
          SearchCardDog(itemOneTitle: "Places \nto walk",itemOneImg: "assets/images/card_3.png",itemOneBgColor: card3,itemOneTextColor: textWhite,
          itemTwoTitle: "Spas \n& Salons",itemTwoImg: "assets/images/card_4.png",itemTwoBgColor: card4,itemTwoTextColor: textBlack,),

           SearchCardDog(itemOneTitle: "Shops \n& Products",itemOneImg: "assets/images/card_5.png",itemOneBgColor: card5,itemOneTextColor: textBlack,
          itemTwoTitle: "Walk \ngroups ",itemTwoImg: "assets/images/card_6.png",itemTwoBgColor: card6,itemTwoTextColor: textWhite,),

          SearchCardDog(itemOneTitle: "Animals \nin adoption",itemOneImg: "assets/images/card_7.png",itemOneBgColor: card7,itemOneTextColor: textBlack,
          itemTwoTitle: "Walk \ngroups ",itemTwoImg: "assets/images/card_8.png",itemTwoBgColor: card8,itemTwoTextColor: textWhite,),

          ],
      ),
    ),
        ));
  }
}


