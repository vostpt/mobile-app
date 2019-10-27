import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:url_launcher/url_launcher.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/presentation/models/contacts.dart';

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void showErrorSnackbar(String event, ScaffoldState context) {
  if (event != null) {
    context.showSnackBar(new SnackBar(
      content: new Text(event),
    ));
  }
}

double findTextWidth(String text, TextStyle style) {
  final textPainter = TextPainter(textDirection: TextDirection.ltr);
  textPainter.text = TextSpan(text: text, style: style);
  textPainter.layout();
  return textPainter.width;
}

DataResponse getAttributeById(
    String id, String type, List<DataResponse> listOfData) {
  if (id == null || type == null) {
    return null;
  }
  for (var data in listOfData) {
    if (data.id == id && data.type == type) {
      return data;
    }
  }
  return null;
}

LinkResponse combineLinks(LinkResponse baseLinks, LinkResponse selfLinks) {
  return LinkResponse((b) => b
    ..first = baseLinks?.first
    ..last = baseLinks?.last
    ..next = baseLinks?.next
    ..self = selfLinks?.self);
}

List<Contact> getContacts() {
  return List<Contact>.generate(
      6,
      (int index) => Contact(
          "Teste",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/An_up-close_picture_of_a_curious_male_domestic_shorthair_tabby_cat.jpg/1920px-An_up-close_picture_of_a_curious_male_domestic_shorthair_tabby_cat.jpg",
          "Info",
          ContactType.EMAIL));
}

///Callback to launch url in browser
_launchURL() async {
  const url = 'URL';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

///Callback to launch email
_launchEmail() async {
  const url = 'mailto:<email address>?subject=<subject>&body=<body>';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

///Callback to launch phone
_launchPhone() async {
  const url = 'tel:<phone number>';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

///Callback to build the Contact UI
Widget contactsBuilder(Contact contact) {
  //Methods to launch the urls have been defined above.
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        if (contact.type == ContactType.EMAIL) {
          //launch email
        }
        if (contact.type == ContactType.PHONE) {
          //launch phone
        }
        if (contact.type == ContactType.URL) {
          //launch url in browser
        }
      },
      child: Container(
        color: Colors.blue,
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/vost_logo_white.png",
          image: contact.imageUrl,
        ),
        height: 20.0,
        width: 20.0,
      ),
    ),
  );
}

String formatTime(String date) {
  DateTime dateTime = DateTime.parse(date);
  intl.DateFormat dateFormat = intl.DateFormat("HH:mm dd-MM-yyyy");
  return dateFormat.format(dateTime).toString();
}
