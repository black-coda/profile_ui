import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff03DAC6),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     Icon(Icons.arrow_back_sharp, color: Colors.black87,size: 35,),
                     Icon(Icons.settings, color: Colors.black87,size: 35,)
                  ],
                ),
              ),
              Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/elijah.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Elijah David",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "@amoto",
                    style: GoogleFonts.lato(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50,
                    width: 700,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Upgrade to Premium',
                            style: GoogleFonts.montserrat(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MenuBarWidget(
                    text: 'Your Order History',
                    icon: Icons.shopify_outlined,
                    arrowShow: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MenuBarWidget(
                    text: "Help and Support",
                    icon: Icons.help_outline_sharp,
                    arrowShow: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MenuBarWidget(
                    text: "Load gift voucher",
                    icon: Icons.help_outline_sharp,
                    arrowShow: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MenuBarWidget(
                    text: "Logout",
                    icon: Icons.help_outline_sharp,
                    arrowShow: true,
                  ),
                ],
              ),
            ),
          ),
            ],
          ),
        )
      ),
    ),
  );
}

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.arrowShow});

  final String text;
  final IconData icon;
  final bool arrowShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 700,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black87,
              size: 30,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            arrowShow
                ? const Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.black87,
                    size: 30,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
