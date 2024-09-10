import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://res.cloudinary.com/jerrick/image/upload/v1717870131/66649e33352b6c001d0fc0f2.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 60.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.arrow_back_ios_new),
                                      Icon(Icons.favorite),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 25,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4TUtAk_tgrdgaKzCjHKehGKvBynfcxd9GA&s'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Madrid city tour for designers',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'city madrid espanol designers ul UK travel',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    rowIconText('20', Icons.favorite),
                    rowIconText('34', Icons.upload_outlined),
                    rowIconText('82', Icons.messenger_outline_outlined),
                    rowIconText('295', Icons.face_2),
                  ],
                ),
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                    'In a quaint little village, nestled between rolling hills and ancient oak trees, a mysterious old bookshop stood quietly. The shop’s wooden sign, weathered by time, creaked softly in the breeze. Inside, rows upon rows of books stretched endlessly, their spines a mosaic of colors and stories. As the afternoon sun filtered through dusty windows, it cast a warm, golden glow over the shop’s cozy corners. Each book held a secret, and each shelf whispered tales of adventures and forgotten lore, inviting the curious and the adventurous to explore the magic within.'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
        ),
        Icon(
          icon,
        )
      ],
    );
  }
}
