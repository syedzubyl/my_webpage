import 'package:flutter/material.dart';
//import 'package:own_website/second_page.dart';

class Homepage extends StatelessWidget {
  final  bool isDarkMode;
  final VoidCallback onThemeChange;
  Homepage({super.key, required this.isDarkMode ,required this.onThemeChange} );
  final TextEditingController _controller = TextEditingController();
  final String _inputText='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("DATA GET FROM YOUR",
        ),),
        actions: [
          IconButton( icon: Icon(
           isDarkMode? Icons.wb_sunny : Icons.nights_stay),
           onPressed: onThemeChange, 
          ),
        ],
      ),
      body:   Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
      //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text("tittle"
            ,style: TextStyle(
                fontSize: 24
              ),),
          ),
          Container(
            // width: 300.0,
           // color: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 16.0 ) ,
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink)
                    ),
                      labelText: 'Enter what ever the content of topics'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text("main content of topics :",
            style: TextStyle(
              fontSize: 24,
            ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(),
          )
        ],
      ),
    );
  }
}