

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _MyDialog extends StatefulWidget {
  const _MyDialog({
    required this.cities,
    required this.selectedCities,
    required this.onSelectedCitiesListChanged,
    required this.title,
    required this.titlleex,
  });

  final List<String> cities;
  final String titlleex;
  final String title;
  final List<String> selectedCities;
  final ValueChanged<List<String>> onSelectedCitiesListChanged;

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<_MyDialog> {
  List<String> _tempSelectedCities = [];
  String titlleName = "";

  @override
  void initState() {
    _tempSelectedCities = widget.selectedCities;
    // _temptitle=widget.titlleex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titlleName = widget.title;
    return Dialog(
      child: Container(
        //height: 300,
        //width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              titlleName,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // color: Color(0xFFfab82b),

            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cities.length,
                itemBuilder: (BuildContext context, int index) {
                  final cityName = widget.cities[index];

                  // titlleName =titlleame;
                  return CheckboxListTile(
                      title: Text(cityName),
                      value: _tempSelectedCities.contains(cityName),
                      onChanged: (bool? value) {
                        if (value!) {
                          if (!_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.add(cityName);
                            });
                          }
                        } else {
                          if (_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.removeWhere(
                                      (String city) => city == cityName);
                            });
                          }
                        }
                        widget.onSelectedCitiesListChanged(_tempSelectedCities);
                      });
                }),
          ],
        ),
      ),
    );
  }
}