import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Text(
                  'VENDOR SHOP',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                width: 400,
                height: 500,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'LOGIN',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          ),
                          Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    icon: Icon(Icons.phone_android),
                                    hintText: 'Enter your Mobile no.'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    hintText: 'Enter your password'),
                              ),
                            ],
                          ),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              color: Colors.red[900],
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 70,
                child: Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account: ',
                          style: TextStyle(
                            color: Colors.red[900],
                          ),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ])),
                ))
          ],
        ),
      ),
    );
  }
}
