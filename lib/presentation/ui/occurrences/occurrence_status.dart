import 'package:flutter/material.dart';
import 'package:vost/presentation/utils/misc.dart';

class OccurrenceStatus extends StatelessWidget {
  final String status;
  final String updatedAt;
  OccurrenceStatus(this.status, this.updatedAt);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Estado",
              style: TextStyle(
                color: Color(0xff5a9216),
                fontSize: 24,
              )),
          _spaceBetweenChildren(),
          Center(
            child: Text(status,
                style: TextStyle(
                  color: Color(0xdd000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                )),
          ),
          _spaceBetweenChildren(),
          Center(
            child: Text("Última atualização: " + formatTime(updatedAt),
                style: TextStyle(
                  color: Color(0x84000000),
                )),
          ),
        ],
      ),
    ));
  }

  SizedBox _spaceBetweenChildren() {
    return SizedBox(
      height: 10.0,
    );
  }
}
