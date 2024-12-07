import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gear/views/auth/login.dart';
import 'package:gear/views/home.dart';

import '../../controllers/AuthController.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final AuthController _authController = AuthController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController(); // Trường nhập lại mật khẩu

  void _register() async {
    var user = await _authController.registerWithEmailAndPassword(
      _emailController.text,
      _passwordController.text,
      _confirmPasswordController.text,
    );
    if (user != null) {
      // Điều hướng đến trang Home sau khi đăng ký thành công
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() ));
    } else {
      // Hiển thị thông báo lỗi nếu đăng ký không thành công
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error registering')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Icon(Icons.lock_outline, size: 80,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Technology Shop", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      _register(); // Gọi hàm _register
                    },
                    child: Container(
                      width: 350,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Register", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("Not a member? ", style: TextStyle(fontSize: 17),),
                //     InkWell(
                //         onTap: (){
                //           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                //         },
                //         child: Text("Login now", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),)
                //     ),
                //   ],
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
