import 'package:flutter/material.dart';

class CustomisedDivider extends StatelessWidget {
  const CustomisedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/divider.png');
  }
}

class PrimaryHeadingText extends StatelessWidget {
  final String text;
  final TextAlign alignment;
  const PrimaryHeadingText({
    super.key,
    required this.text,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontSize: 28,
      ),
    );
  }
}

class DisplayProfilePictureWidget extends StatelessWidget {
  final List<String> images;
  final double w;
  const DisplayProfilePictureWidget({
    super.key,
    required this.w,
    required this.images,
  });

  final double offset = 40;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: w * .2,
        ),
        Image.asset(
          'assets/images/${images[0]}.png',
          height: 55,
        ),
        Positioned(
          left: offset,
          child: Image.asset(
            'assets/images/${images[1]}.png',
            height: 55,
          ),
        ),
        Positioned(
          left: 2 * offset,
          child: Image.asset(
            'assets/images/${images[2]}.png',
            height: 55,
          ),
        ),
        Positioned(
          left: 3 * offset,
          child: Image.asset(
            'assets/images/${images[3]}.png',
            height: 55,
          ),
        ),
      ],
    );
  }
}

class BenefitShortCard extends StatelessWidget {
  final String imageUrl;
  final String subHeading;
  final String text;
  const BenefitShortCard({
    super.key,
    required this.w,
    required this.imageUrl,
    required this.subHeading,
    required this.text,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.21,
      decoration: BoxDecoration(
        color: const Color(0xff202020),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset('assets/images/$imageUrl.png'),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 10, bottom: 10),
              child: SubHeading(
                title: subHeading,
              ),
            ),
            CustomText(
              title: text,
              alignment: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayReviewWidget extends StatelessWidget {
  final String name;
  final String city;
  final String reviewText;
  const DisplayReviewWidget({
    super.key,
    required this.w,
    required this.name,
    required this.city,
    required this.reviewText,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: w * .26,
      decoration: BoxDecoration(
        color: const Color(0xff202020),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14),
            child: Row(
              children: [
                Center(
                  child: Container(
                    width: 40.0, // Set the desired width
                    height: 40.0, // Set the desired height
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 16,
                      ),
                    ),
                    CustomText(title: city, alignment: TextAlign.left),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: CustomText(
              title: reviewText,
              alignment: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitLongCard extends StatelessWidget {
  final String imageUrl;
  final String subHeading;
  final String text;
  const BenefitLongCard({
    super.key,
    required this.w,
    required this.imageUrl,
    required this.subHeading,
    required this.text,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: w,
      decoration: BoxDecoration(
        color: const Color(0xff202020),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Image.asset('assets/images/$imageUrl.png'),
          const SizedBox(
            height: 15,
          ),
          SubHeading(
            title: subHeading,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: CustomText(
              title: text,
              alignment: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  final String title;
  const SubHeading({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontSize: 20,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  const CustomText({super.key, required this.title, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      style: const TextStyle(
        color: Color(0xffA7A8A8),
        fontFamily: 'Avenir',
        fontSize: 16,
      ),
    );
  }
}

class QuestionAnswerWidget extends StatelessWidget {
  final String question;
  final String answer;
  const QuestionAnswerWidget({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        CustomText(
          title: question,
          alignment: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomText(
          title: answer,
          alignment: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 1,
          color: Color(0xff2F2F30),
        ),
      ],
    );
  }
}
