import 'package:flutter/material.dart';
import 'package:magazine/category/category_list.dart';
import 'details_page1.dart';
import 'details_page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // bool isRight = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'MAGAZINE',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Container(
                  height: 2,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => BuildItem(
                          magazine: magazine[index],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage1(
                                        details: magazine[index],
                                      )),
                            );
                          },
                          press2: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage2(
                                        details: magazine[index],
                                      )),
                            );
                          },
                        ),
                    itemCount: magazine.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildItem extends StatelessWidget {
  const BuildItem(
      {Key? key,
      required this.magazine,
      required this.press,
      required this.press2})
      : super(key: key);

  final Magazine magazine;
  final VoidCallback press;
  final VoidCallback press2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.width / 2.5,
                  width: size.width / 2,
                  child: Image.asset(
                    magazine.image1,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
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
                          magazine.date1,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      magazine.title1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'READ ARTICLE',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: press2,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          magazine.date2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.red[900],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      magazine.title2,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'READ ARTICLE',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: size.width / 2.5,
                  width: size.width / 2,
                  child: Image.asset(
                    magazine.image2,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
