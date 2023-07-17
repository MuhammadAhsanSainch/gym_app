import 'package:flutter/material.dart';

class Resourses extends StatefulWidget {
  const Resourses({super.key});

  @override
  State<Resourses> createState() => _ResoursesState();
}

class _ResoursesState extends State<Resourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const MyText(
                title: 'Today\'s activity',
                fontSize: 14,
              ),
              const SizedBox(height: 5),
              const MyText(
                title: '7 June 2023',
                fontColor: Colors.red,
              ),
              const SizedBox(height: 10),
              const MyContainer(),
              const SizedBox(height: 10),
              const MyText(
                title: "My Plans",
                fontSize: 14,
              ),
              const SizedBox(height: 10),
              const MyContainer(
                title1: "Active  ",
                title2: " AI & Coach",
                title3: "Lean & Fit",
                title4: "32% completed . 4 weeks",
              ),
              const SizedBox(
                height: 7,
              ),
              const MyContainer(
                title1: "Not started   ",
                title2: " AI Exclusive",
                title3: "CrossFit Foundations",
                title4: "AI has generated your workout plans",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    title: "Create your plan",
                    onPress: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MyButton(
                    title: "Generate AI Plan",
                    onPress: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                title: "Lose Weight plans",
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.sizeOf(context).width * 0.01),
                          child: const MyContainer(
                            title1: "Premium",
                            title3: "CrossFit Foundations",
                            title4: "4 weeks . 12 workouts",
                          )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                title: "Build muscle plans",
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.sizeOf(context).width * 0.01),
                          child: const MyContainer(
                            title1: "Premium",
                            title3: "CrossFit Foundations",
                            title4: "4 weeks . 12 workouts",
                          )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                title: "CrossFit plans",
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.sizeOf(context).width * 0.01),
                          child: const MyContainer(
                            title1: "Premium",
                            title3: "CrossFit Foundations",
                            title4: "4 weeks . 12 workouts",
                          )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color bgColor;
  const MyButton(
      {super.key,
      this.bgColor = Colors.blueGrey,
      required this.onPress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 140,
        height: 50,
        decoration: BoxDecoration(
            color:
                title == "Generate AI Plan" ? Colors.orange : Colors.grey[900],
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: MyText(title: title),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String title1, title2, title3, title4;
  const MyContainer({
    super.key,
    this.title1 = 'Lose weight',
    this.title2 = '',
    this.title3 = 'Upper body muscular endurande',
    this.title4 = '32% completed . 05/14 exercises',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[900],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MyText(
                title: title1,
                fontColor: Colors.yellow,
              ),
              MyText(
                title: title2,
                fontColor: Colors.yellow,
              ),
              Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.grey[900],
              )
            ],
          ),
          MyText(
            title: title3,
            fontSize: 16,
          ),
          MyText(title: title4)
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String title;
  final Color fontColor;
  final double fontSize;
  const MyText(
      {super.key,
      required this.title,
      this.fontColor = Colors.white,
      this.fontSize = 12});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: fontColor, fontSize: fontSize, fontWeight: FontWeight.w500),
    );
  }
}
