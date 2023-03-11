import 'package:flutter/material.dart';

class profileCard extends StatelessWidget {
  profileCard({
    this.ontap,
    this.cardTexts,
    this.cardTexts2,
    this.cardIcon,

    Key? key,
  }) : super(key: key);
VoidCallback? ontap;
  String? cardTexts;
  String? cardTexts2;
  IconData?  cardIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            flex: 1,
            child: Container(

              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  cardIcon, color: const Color(0xff6D28D9),
                ),
              ),
            ),
          ),
        ),
        Expanded(

          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cardTexts ?? "", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),),
                SizedBox(height: 10,),
                Text(cardTexts2 ?? "", style: TextStyle(color: Colors.black,fontSize: 10),),

              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton.icon(onPressed: ontap,
            icon: Icon(Icons.chevron_right,color: Colors.grey,),
            label: Text(''),
          ),
        ),
      ],
    );
  }
}