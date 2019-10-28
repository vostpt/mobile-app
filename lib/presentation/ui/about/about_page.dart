import 'package:flutter/material.dart';
import 'package:vost/localization/vost_localizations.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/models/contact.dart';
import 'package:vost/presentation/navigation/navigation.dart';
import 'package:vost/presentation/utils/misc.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Contact> contactList = getContacts();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text('VOST Portugal'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 8.0,
            ),
            child: Image.asset(
              'assets/images/vost_logo_white.png',
              fit: BoxFit.scaleDown,
              height: 100.0,
              width: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              VostLocalizations.of(context).textContentAbout,
              style: styleContentTextAboutPage(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              top: 24.0,
            ),
            child: Text(
              VostLocalizations.of(context).textContactHeading,
              style: styleContactHeadingAboutPage(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: GridView.builder(
              itemBuilder: (context, positon) {
                return contactsBuilder(contactList[positon]);
              },
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: GestureDetector(
                onTap: _onTutorialTap,
                child: Container(
                  color: colorAccent,
                  height: 50.0,
                  child: Center(
                      child: Text(
                    VostLocalizations.of(context).textTutorialAboutPage,
                    style: styleBottomBarTextAboutPage(),
                  )),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () => _onContributionsTap(context),
                child: Container(
                  color: colorPrimary,
                  height: 50.0,
                  child: Center(
                      child: Text(
                    VostLocalizations.of(context).textContributionsAboutPage,
                    style: styleBottomBarTextAboutPage(),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ///Callback to navigate to tutorial screen
  void _onTutorialTap() {
    print("Tutorial tapped");
  }

  ///Callback to navigate to contributors screen
  void _onContributionsTap(BuildContext context) {
    print("Contributions tapped");
    navigateToContributions(context);
  }
}
