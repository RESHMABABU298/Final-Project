import 'package:flutter/material.dart';
import 'package:todo_final_project/todo_home.dart';
import 'package:todo_final_project/todo_function.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    String hardcodedUsername = "Reshma";
    String hardcodedPassword = "Reshma123";

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEUdGyb///8AAAAaGCP39vcfHSkYFiIGABbn5ucVEyCNjJAMCBkAAAQxLzjIyMkTEB59fIAAAAsAABOHhorAv8EAAA/U1NXg4OH4+PgAABSlpadqaW5bWmBPTlTt7e1GRUwnJS+1tbd2dXk4Nj63triZmZtvbnJgX2SXl5rGxsg+PURVVFqsq66hoaQrKTPj4uS7F6LgAAAD+0lEQVR4nO3ZaXOqPACGYQgUtLghKGjdW083bf//v3srSkUgy5wB3zkz9/VRY8hjFkKwLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAf4wz9SRiGk6DbQGVecKornA2dBiqrv4JQG5d/EIjZ4vEQxy+HaCl6w/LXzs2ve5NA1fJuKJ5H85c43u6fHOG3EtLr265KGoc35X2xG9i/0nghbjM6D3aa/zR1k8H8TyACWT7xcVhdK0se/Uk7CdUGvWJpMXJL3ycLUfzrfxKWTUf1GcPnQbnoUVTGxH0T+v2kpkQcFuZjTULbdkfCq1xYHOtKfvbKBe+ZMHyqL7LqX//52oQ//bgpdaPnT+srexT/X8Lwj6xMeo0oSWjbS/82YEdW2b7hiOYJg4W8kDvMR6E0ob0uTjFRN9wvotBqknFCz1KVmuZ/vDxh2r3ORfGiqmzd6HJjnFBI5s1FNNMlvP4L1vBVWdeq0XFqmlDTKNseO7qE9lPeN2IlL3QS+ZLWtplQNXEyb2NtwuTSN8FOU5fbZCcaJuyuNcXyoaVKaK/PN07NgLcLvX2/hJODrlH2sqtNOM92Zd5GW1fc4HJqmFB8a1v1NtMmPA/TINLW1eRao004PSV0fG2j7PeeNqGdNTzc6it7aPAxYxONTnbly6522eej19OU8D70jTp3kDrh5nRL1E9D2140eUsMMuKxdI2OOH+RXUp7r7DzkaVOmM1VId2wXe1kT1x/z68mLHw7lOy5i1KDhJ9Dw4Sjuyc06EP3n+5D/e0w/4E6Yd90Hr42/ySsTug4+kYNDBKe19JYX9lX5Ym55YTaneSP41ib8LzcVi5V1ei2zSxhqHzcyZwXeGXCQ7anMRjy742fZWgT6pca12BfernL6QdECwuNLqG+VceJNmFe5exNU1fawiDVJvR1m0lP/3yY3+ScmaaufeUY+g4JdZ24vxzmKhImvzWO1WtNG+uMQcLhUtWo39KKhP3rsar6ebrRTal5Qqunmj1f+rO218LRhPIRsenjROOElthKG7X8XfukCZ9uHmoD+R1j205Ak4SWmNe3KV1fu0eScLUuLR7+Oq2v7NBSQKOElqg9QkoeCnev+oTz6huXwKqdi7u2ApoltHyrsqd0o5u3LjUJ3bkT1jyyeyKqdGNsNXmOWGq7UcKfZn1si+1KInHbplLC1WC/FBPJNtoXUfH4J90+V19RNcjp3vIkJyXdUCyO70mn8z3dRl+i8p87z7/6G1+IsepVuC/60cv0u9NJ4v2nCNvMd2paibzkcNzLXmGHQV2TvCtVJXnpIDzXNW7lJggAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8nf8AuQo5iCJUvtUAAAAASUVORK5CYII=",
            width: 150,
            height: 70,
          ),
          // SizedBox(height: 50,),    
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), label: Text("Username")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              obscureText: passwordVisible,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                label: Text("Password"),
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility_off 
                      : Icons.visibility,
                      semanticLabel: passwordVisible ? 'hide password' : 'show password',),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                alignLabelWithHint: false,
                //filled: true,
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
            ),
          ),

          InkWell(onTap:() async{
                if (hardcodedUsername == usernameController.text &&
                    hardcodedPassword == passwordController.text) {
                  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                  // content: Row(
                  //   children: const [
                  //     Icon(Icons.check),
                  //     Text("Logged In Successfully"),
                  //   ],
                  // ),
                  // ));
                  await storeData(true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Firstpage(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Row(
                      children: const [
                        Icon(Icons.warning),
                        Text("Invalid Credentials !"),
                      ],
                    ),
                  ));
                }
              }, 
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 46, 54),
                borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("SUBMIT",style: TextStyle(color: Colors.white),)),),
          ),
          

// ElevatedButton(
//   style: ButtonStyle(
//     shape: materialst
//   ),
//   onPressed: (){},

//  child: Text("jerry")

// ),


          // Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: MaterialButton(
              
          //     color: Colors.blue,
          //     onPressed: () async{
          //       if (hardcodedUsername == usernameController.text &&
          //           hardcodedPassword == passwordController.text) {
          //         //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
          //         // content: Row(
          //         //   children: const [
          //         //     Icon(Icons.check),
          //         //     Text("Logged In Successfully"),
          //         //   ],
          //         // ),
          //         // ));
          //         await storingDatatoPreff(true);
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) =>Firstpage(),
          //           ),
          //         );
          //       } else {
          //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //           duration: Duration(seconds: 3),
          //           content: Row(
          //             children: const [
          //               Icon(Icons.warning),
          //               Text("Invalid Credentials !"),
          //             ],
          //           ),
          //         ));
          //       }
          //     },
          //     child: Text(
          //       "Login",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     height: 50,
          //     minWidth: 200,
          //   ),
          // ),



        ],
      ),
    );
  }


}