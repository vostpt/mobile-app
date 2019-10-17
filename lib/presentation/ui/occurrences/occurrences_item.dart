import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/assets/text_styles.dart';

class OccurrencesItem extends StatefulWidget {
  final OccurrenceModel occurrenceModel;

  const OccurrencesItem({Key key, this.occurrenceModel}) : super(key: key);
  @override
  _OccurrencesItemState createState() => _OccurrencesItemState();
}

class _OccurrencesItemState extends State<OccurrencesItem> {
  String _formatTime(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("HH:mm dd-MM-yyyy");
    return dateFormat.format(dateTime).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(widget.occurrenceModel.type.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Container(
                width: 26.909088134765625,
                height: 26.909090042114258,
                child: Icon(
                  Icons.star,
                  color: Color(0xfffbc02d),
                ),
              )
            ],
          ),
          Text(widget.occurrenceModel.parish.name,
              style: styleOccurrencesSubText()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.occurrenceModel.status.name,
                  style: styleOccurrencesSubText()),
              Text(_formatTime(widget.occurrenceModel.updatedAt),
                  style: styleOccurrencesSubText())
            ],
          ),
        ],
      ),
    );
  }
}
