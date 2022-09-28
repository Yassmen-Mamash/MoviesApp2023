import 'package:flutter/material.dart';

class SearshWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      appBar: AppBar(
        backgroundColor:  Color(0xFF121312),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              padding: EdgeInsets.all(12),
              //color: Color(0xFF121312),
              child: TextField(
                style: TextStyle(
                    color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Color(0xFF514F4F),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35)),
                    labelText: 'Searsh',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Colors.white,
                    )),
              ),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Icon material-local-movies.png'),
                SizedBox(height: 10),
                Text(
                  'No movies found',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 13,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
