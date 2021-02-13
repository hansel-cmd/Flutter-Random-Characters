import 'package:flutter/material.dart';
import 'package:test_app/presentation/quote.dart';

class QuoteCard extends StatelessWidget {
  
  final Quote quote;
  final Function remove;
  QuoteCard({ this.quote, this.remove });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.grey[700],
        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                onPressed: () {remove();},
                minWidth: 1,
                height: 1,
                padding: EdgeInsets.all(3),
                child: Icon(Icons.close, size: 18),
                color: Colors.red[700],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
              )
              ]
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Text(
              '"${quote.text}" (${quote.season})',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              )
              ),
            )
          ],
        )
      ),
    );
  }
}