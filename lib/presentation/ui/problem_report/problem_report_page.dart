import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vost/constants.dart';
import 'package:vost/localization/vost_localizations.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/utils/misc.dart';

class ProblemReportPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

 
  void _handleEmailClick() async{
    final url = "mailto:$reportEmail?subject=Report%20a%20Problem";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      showErrorSnackbar("Can not launch email application", scaffoldKey.currentState);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(VostLocalizations.of(context).textReportProblem,style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingText),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In iaculis nunc sed augue. A scelerisque purus semper eget duis at tellus at urna. Quisque sagittis purus sit amet volutpat. Maecenas volutpat blandit aliquam etiam. Eu facilisis sed odio morbi quis commodo odio. Aliquet risus feugiat in ante metus. Nec ullamcorper sit amet risus. Libero id faucibus nisl tincidunt eget nullam. Non consectetur a erat nam at. Cursus eget nunc scelerisque viverra mauris in aliquam sem. At tempor commodo ullamcorper a lacus vestibulum sed. Urna molestie at elementum eu facilisis sed. Fermentum dui faucibus in ornare. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Nunc faucibus a pellentesque sit amet porttitor eget. Nunc sed velit dignissim sodales ut eu sem. Interdum posuere lorem ipsum dolor. Eu mi bibendum neque egestas congue quisque. Convallis convallis tellus id interdum velit laoreet id donec.",textAlign: TextAlign.justify,),
            SizedBox(height: sizedBoxHeight,),
            GestureDetector(
              onTap:_handleEmailClick,
              child: Text(reportEmail))
          
          ],
        ),
      ),
    );
  }
}