
import 'package:flutter/material.dart';
import 'package:test_app/presentation/my_flutter_app_icons.dart';
import 'package:test_app/presentation/quote.dart';
import 'package:test_app/presentation/quote_card.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  int counter = 0;
  List<Quote> quotes = [];

  Map map = {};
  @override
  Widget build(BuildContext context) {

    if (map.isEmpty) {
      map = ModalRoute.of(context).settings.arguments;
      this.quotes = map['info'].quotes;
    }


    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Info"),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey[800],
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //   Expanded(
              //     child: Container(
              //         padding: EdgeInsets.all(10),
              //         child: Image.asset('assets/mikasa.png')),
              //   ),
              // ]),

              // Container(
              //         child: Image.asset('assets/mikasa.png')),

              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(map['info'].image),
                  radius: 160,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(1),
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "${map['info'].name} $counter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MyFlutterApp.facebook_squared,
                          color: Colors.white,
                        ),
                        Text(
                          " | ${map['info'].fb}",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        Text(
                          " | ${map['info'].number}",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          " | ${map['info'].email}",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text(
                "About:",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 10),

              Text(
                """
                ${map['info'].about}
                """,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Quotes:",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Container(
                child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: quotes.map((quote) => 
                        QuoteCard(quote: quote, remove: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        })).toList(),
                      ),

                  ),
           
              )


            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              this.counter += 1;
            });
          },
          backgroundColor: Colors.grey[900],
          child: Icon(Icons.add)),
    );
  }
}
