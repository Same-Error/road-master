import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:road_master/view/questions.dart';

class TC extends StatelessWidget {
  const TC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms of Use",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Gap(20),
              Text(
                "The application is notifying you to the presence of an app that provides several services that are essential information for safer and more efficient use.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              Gap(16),
              Text(
                "User-Generated content policy (UGC) by pressing the accept button:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(16),
              ListTile(
                leading: Icon(Icons.person, color: Color(0XFF2b319e)),
                title: Text(
                  "I declare I have read and accepted the following condition of use.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Color(0XFF2b319e)),
                title: Text(
                  "If we find the app is being used outside its terms of use, we may restrict access to it.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Color(0XFF2b319e)),
                title: Text(
                  "Any type of modification to the app or its components is not allowed.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip, color: Color(0XFF2b319e)),
                title: Text(
                  "Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.block_flipped, color: Color(0XFF2b319e)),
                title: Text(
                  "We do not share any kind of your Personal Data with third parties.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Gap(16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "You can find out more information by clicking on the\nFollowing link : ",
                    ),
                    TextSpan(
                      text: "Terms and conditions of use\n",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: "Following link : "),
                    TextSpan(
                      text: "Privacy Policy.\n",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          "You can find out more information by clicking on the",
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              Gap(20),
              SizedBox(
                width: 150,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Questions()));
                  },
                  child: Text(
                    "Accept",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0XFF2b319e),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
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
