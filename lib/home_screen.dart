import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-school-season-back-to-school-season-blue-cartoon-image_11842.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://cdn.truelancer.com/user-picture/468601-5aa49efd0f889.jpg'),
                        ),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pranoti Parab',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('1234567890',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image:
                                      AssetImage('assets/images/profile.png'),
                                  height: 128),
                              Text("Personal Data", style: cardTextStyle),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image:
                                      AssetImage('assets/images/schedule.png'),
                                  height: 128),
                              Text("Course Schedule", style: cardTextStyle),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/certificate.png'),
                                  height: 128),
                              Text("Attendance Recap", style: cardTextStyle),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image:
                                      AssetImage('assets/images/research.png'),
                                  height: 128),
                              Text("Study Result", style: cardTextStyle),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/book-stack.png'),
                                  height: 128),
                              Text("Course Booking", style: cardTextStyle),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage('assets/images/task.png'),
                                  height: 128),
                              Text("Course Plan", style: cardTextStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
