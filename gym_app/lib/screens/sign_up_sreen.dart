import 'package:flutter/material.dart';
import 'package:gym_app/models/user_model.dart';
import 'package:gym_app/values/custom_colors.dart';

class SignUpScreem extends StatefulWidget {
  const SignUpScreem({Key? key}) : super(key: key);

  @override
  _SignUpScreemState createState() => _SignUpScreemState();
}

class _SignUpScreemState extends State<SignUpScreem> {
  TextEditingController _nameImputController = TextEditingController();
  TextEditingController _mailImputController = TextEditingController();
  TextEditingController _passwordImputController = TextEditingController();
  TextEditingController _confirmImputController = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                customColors().getActivePrimaryGradientColor(),
                customColors().getActiveSecondaryGradientColor(),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Cadastrar-se",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameImputController,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Nome completo",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _mailImputController,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordImputController,
                      obscureText: (this.showPassword == true) ? false : true,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.vpn_key_sharp,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    (this.showPassword == false)
                        ? TextFormField(
                            controller: _confirmImputController,
                            obscureText: (true),
                            autofocus: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Confirmar senha",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.vpn_key_sharp,
                                color: Colors.white,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    Row(
                      children: [
                        Switch(
                          value: this.showPassword,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                this.showPassword = newValue;
                              },
                            );
                          },
                          activeColor: Colors.blue,
                        ),
                        Text(
                          "Mostrar senha",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  customColors().getActivePrimaryButtonColor(),
                )),
                onPressed: () {
                  _doSignUp();
                },
                child: Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _doSignUp() {
    User newUser = User(
      name: _nameImputController.text,
      mail: _mailImputController.text,
      password: _passwordImputController.text,
      keepOn: true,
    );
    print(newUser);
  }
  void _saveUser()async{
    SharedPreferences prefs = await
  }
}
