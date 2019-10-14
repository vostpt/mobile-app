import 'package:flutter/material.dart';

class OcurrencesStatus extends StatelessWidget {
  final DateTime lastUpdate;
  final String status;

  const OcurrencesStatus({
    Key key,
    @required this.lastUpdate,
    @required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Estado',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  status,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Center(
                  child: Text(
                    'Ultima actualizacao ${lastUpdate.toUtc()}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
