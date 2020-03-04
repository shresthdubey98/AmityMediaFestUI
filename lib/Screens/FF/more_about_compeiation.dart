import 'package:flutter/material.dart';

class MoreAboutCompetition extends StatelessWidget {
  static String routeName = "/ff-know-more-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More Information"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "REGISTRATION AND PASSES",
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(color: Colors.black45, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
            'Passes For All Film Screenings                      INR 1000/-\n\n' +
                'Passes For All Film Screenings (Students)    INR 700/-\n\n' +
                'Entry Fee For Film Making Competition         INR 500/-',
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.black45, fontWeight: FontWeight.bold),
              
            ),
            Divider(),
            Text(
            'Online payment can be made by Bank Transfer\n'  +
                'Bank Name: Axis Bank Limited\n'  +
                'Branch: Kanwal Complex, Shrimant Madhav Rao Scindia Marg, City Centre,\n'  +
                'Gwalior, M.P. 474002\n'  +
                'IFSC Code: UTIB0000158\n'  +
                'MICR Code: 474211002\n'  +
                'Account Name: Amity University Madhya Pradesh\n'  +
                'Account No.: 911010033371991\n'  +
                'Payment by Demand Draft\n'  +
                'The Demand Draft should be drawn in favour of ‘Amity University Madhya\n'  +
                'Pradesh’ payable at Gwalior.\n' ,
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.black45,),
            ),
            Divider(),
            Text(
             "For Passes Please Contact\n+91-9466290728\n+91-9459960281\n+91-7052704562",
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.black45,),
            ),
            Divider(),
            Text(
              'Limited Tickets are  '  + 
            'Available for Standup  '  +
            'Comedy Show on  '  +
            'Payement  \n'  +
            'VIP PASS -'  +
            ' INR 500  \n'  +
            'NORMAL '  +
            'PASS -'  +
              ' INR 300  ' ,
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.black45,),
            ),

          ],
        ),
      ),
    );
  }
}
