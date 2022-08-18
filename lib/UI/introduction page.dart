import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:recorder_app/AI_Language_recognition/recorder_page.dart';



class IntroducPage extends StatefulWidget {
  const IntroducPage({Key? key}) : super(key: key);

  @override
  State<IntroducPage> createState() => _IntroducPageState();
}

class _IntroducPageState extends State<IntroducPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(

            title: "Speech to Text",
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                SelectableText("A simple description", style: GoogleFonts.lobster(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
                ),
                SizedBox(
                  height: size.height*0.07 ,
                ),

                const SelectableText("This app works with AI.It will convert all your speech into a text ",style: TextStyle(

                  fontSize: 15,
                ),
                ),
                SizedBox(
                  height: size.height*0.02 ,
                ),
                const SelectableText("Also, This app provides you with 7 languages. Hit on Done Button to find out.Have a good experience ",style: TextStyle(

                  fontSize: 15,
                ),
                ),

              ],
            ),
            image: Center(child: Lottie.asset("image/languages.json"),),
          ),




        ],
        onDone: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const VoiceSearchingDemo()));

        },

        showNextButton: false,
        back: const Icon(Icons.arrow_back,color: Colors.black,),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple)),


      ),
    );
  }
}
