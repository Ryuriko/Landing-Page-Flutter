import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            imageUrl:
                'https://cdn.pixabay.com/photo/2017/03/27/15/17/apartment-2179337_1280.jpg',
          ),
          Align(
            alignment: Alignment.center,
            child: CachedNetworkImage(
                width: 150,
                imageUrl:
                    'https://cdn.pixabay.com/photo/2017/01/31/23/42/animal-2028258_1280.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 58, right: 58, top: 10, bottom: 10),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 10, bottom: 10),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    )),
                SizedBox(height: 20)
              ],
            ),
          )
        ],
      ),
    );
  }
}
