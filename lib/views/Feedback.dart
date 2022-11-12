import 'package:flutter/material.dart';

class UI22 extends StatefulWidget {
  @override
  _UI22State createState() => _UI22State();
}

class _UI22State extends State<UI22> {
  List<bool> isTypeSelected = [false, false, false, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.amber,
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Please select the type of the feedback",
              style: TextStyle(
                color: Color(0xFFC5C5C5),
              ),
            ),
            SizedBox(height: 5.0),
            GestureDetector(
              child: buildCheckItem(
                  title: "Satisfactory", isSelected: isTypeSelected[1]),
              onTap: () {
                setState(() {
                  isTypeSelected[1] = !isTypeSelected[1];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Needs Improvement", isSelected: isTypeSelected[3]),
              onTap: () {
                setState(() {
                  isTypeSelected[3] = !isTypeSelected[3];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Suggestions", isSelected: isTypeSelected[4]),
              onTap: () {
                setState(() {
                  isTypeSelected[4] = !isTypeSelected[4];
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            buildFeedbackForm(),
            SizedBox(height: 15.0),
            buildNumberField(),
            Spacer(),
            Row(
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.amber,
                  padding: EdgeInsets.all(16.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildNumberField() {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 2.0,
                    color: Color(0xFFC5C5C5),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC5C5C5),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xFFC5C5C5),
        ),
        hintText: " Enter Email",
        border: OutlineInputBorder(),
      ),
    );
  }

  buildFeedbackForm() {
    return Container(
      height: 90,
      child: Stack(
        children: [
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "Please briefly describe the issues",
              hintStyle: TextStyle(
                fontSize: 13.0,
                color: Color(0xFFC5C5C5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE5E5E5),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
              ),
              /*padding: EdgeInsets.all(8.0),*/
              /*child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Color(0xFFA5A5A5),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Upload screenshot (optional)",
                    style: TextStyle(
                      color: Color(0xFFC5C5C5),
                    ),
                  ),
                ],
              ),*/
            ),
          )
        ],
      ),
    );
  }

  Widget buildCheckItem({String title, bool isSelected}) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.check_circle : Icons.circle,
            color: isSelected ? Colors.amber : Colors.grey,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.amber : Colors.grey),
          ),
        ],
      ),
    );
  }
}