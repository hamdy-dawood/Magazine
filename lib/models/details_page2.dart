import 'package:flutter/material.dart';

class DetailsPage2 extends StatelessWidget {
  const DetailsPage2({Key? key, this.details}) : super(key: key);

  final details;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: size.height / 3,
              child: Image.asset(
                details.image2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: size.height / 1.5,
              color: Colors.white,
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 80),
                child: Container(
                  height: size.height / 1.5,
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 2,
                              color: Colors.red[900],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              details.date2,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          details.title2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Beauty is a property or characteristic of an animal,'
                          ' idea, object, person or place that provides a perceptual'
                          ' experience of pleasure or satisfaction\n\n'
                          'The experience of beauty often involves an'
                          ' interpretation of some entity as being in balance'
                          ' and harmony with nature, which may lead to feelings'
                          ' of attraction and emotional well-being. Because'
                          ' this can be a subjective experience. It is often'
                          ' said that beauty is in the eye of the beholder',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '02',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
