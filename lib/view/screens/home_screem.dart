import 'package:flutter/material.dart';
import 'package:ostello/view/widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Benefits of ostello",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Avenir',
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF7D23E0),
                        Colors.black12,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset("assets/images/logo.png"),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PrimaryHeadingText(
                        text: "Apne coaching ko de ek",
                        alignment: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/rotated_rectangle_box.png",
                          ),
                          const Positioned(
                            top: 12,
                            left: 12,
                            child: Text(
                              "nayi Pehchaan! ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                                fontSize: 27,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const CustomisedDivider(),
                      const SizedBox(
                        height: 35,
                      ),
                      DisplayProfilePictureWidget(
                        w: w,
                        images: const <String>[
                          "profile_image1",
                          "profile_image2",
                          "profile_image3",
                          "profile_image4",
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const PrimaryHeadingText(
                        text:
                            "Over 2000+ institute partners across India who trust Ostello. ",
                        alignment: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF7D23E0),
                        Colors.black12,
                        Colors.black12,
                        Colors.black12,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomisedDivider(),
                        const SizedBox(
                          height: 35,
                        ),
                        const PrimaryHeadingText(
                          text: "Benefits of ostello",
                          alignment: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BenefitLongCard(
                          w: w,
                          imageUrl: 'verified_icon',
                          subHeading: '100% Verified students every month',
                          text:
                              'There are 40k+ student active on our platform searching for guidance.',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BenefitShortCard(
                              w: w,
                              imageUrl: 'magnification_icon',
                              subHeading: 'Grow your Visibility',
                              text: 'Get rid of marketing & Join us.',
                            ),
                            BenefitShortCard(
                              w: w,
                              imageUrl: 'marketplace_icon',
                              subHeading: 'Hyperlocal Marketplace',
                              text: '2000+ institutes are trusting us.',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF7D23E0),
                        Colors.black12,
                        Colors.black12,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        BenefitLongCard(
                          w: w,
                          imageUrl: 'dashboard_icon',
                          subHeading: 'Dashboard & Analytics',
                          text:
                              'Get insights from the robust analytics section in app to improve your institute.',
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const CustomisedDivider(),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PrimaryHeadingText(
                        text: "Hear what others are saying",
                        alignment: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 220,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              DisplayReviewWidget(
                                w: w,
                                reviewText:
                                    'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                                name: 'Suresh Nair',
                                city: "Delhi",
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              DisplayReviewWidget(
                                w: w,
                                reviewText:
                                    'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                                name: 'Suresh Nair',
                                city: "Delhi",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const CustomisedDivider(),
                      const SizedBox(
                        height: 35,
                      ),
                      const PrimaryHeadingText(
                        text: "Frequently Asked\nQuestions",
                        alignment: TextAlign.left,
                      ),
                      const QuestionAnswerWidget(
                        question:
                            'How much will Ostello charge me for creating a page on it’s platform?',
                        answer:
                            'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                      ),
                      const QuestionAnswerWidget(
                        question:
                            'How much will Ostello charge me for creating a page on it’s platform?',
                        answer:
                            'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                      ),
                      const QuestionAnswerWidget(
                        question:
                            'How much will Ostello charge me for creating a page on it’s platform?',
                        answer:
                            'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                      ),
                      const QuestionAnswerWidget(
                        question:
                            'How much will Ostello charge me for creating a page on it’s platform?',
                        answer:
                            'I had great experience the moment I listed my coaching centre at Ostello. I had generated over 1000+ leads over just a month!',
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const CustomisedDivider(),
                      const SizedBox(
                        height: 35,
                      ),
                      Column(
                        children: [
                          Container(
                            // height: 225,
                            width: w,
                            decoration: const BoxDecoration(
                              color: Color(0xff202020),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: w * .275,
                                  // height: h * 0.365,
                                  padding: const EdgeInsets.all(20.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ostello, the ultimate companion for every student.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Avenir',
                                          fontSize: 32,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SubHeading(
                                        title: "Made with ❤️ in India 🇮🇳",
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 160.0),
                                  child: Image.asset(
                                      "assets/images/rocket_icon.png"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: w,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Join us now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      SizedBox(
                        width: w,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xff7D23E0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: SubHeading(
                              title: "Register Now",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
