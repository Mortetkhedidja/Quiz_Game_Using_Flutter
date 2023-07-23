import 'package:flutter/material.dart';
import 'package:mine/main.dart';
class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score,{super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Color mainColor = Color(0xFF252c4a);
  Color SecondColor = Color(0xFF117eeb);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Congatulations ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 20.0),
            Text("Your score is :",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 50.0),
            Text("${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 80.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 60.0),
            MaterialButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context)=>HomePage()
                      ));
                },
              elevation: 0.0,
              color: Colors.orange,
              textColor: Colors.white,
              child: Text("Repeat the quizz"),

            )
          ],
        ),
      ),

    );
  }
}
