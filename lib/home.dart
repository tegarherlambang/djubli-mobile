import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: const [
                Flexible(
                    child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Search Product",
                              prefixIcon: Icon(Icons.search)),
                        ))),
                SizedBox(width: 14),
                Icon(Icons.favorite_outline),
                SizedBox(width: 14),
                Icon(Icons.notifications_outlined)
              ],
            ),
            const SizedBox(height: 24),
            Image.asset('assets/images/flash_sale_banner.png'),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Category",
                  style: TextStyle(
                      color: Color(0xFF223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "More Category",
                  style: TextStyle(
                      color: Color(0xFF40BFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/ic_category_product.png"),
                    const SizedBox(height: 8),
                    const Text("Man Shirt",
                        style:
                            TextStyle(color: Color(0xFF9098B1), fontSize: 12))
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/ic_category_dress.png"),
                    const SizedBox(height: 8),
                    const Text("Dress",
                        style:
                            TextStyle(color: Color(0xFF9098B1), fontSize: 12))
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/ic_category_equipment.png"),
                    const SizedBox(height: 8),
                    const Text("Equipment",
                        style:
                            TextStyle(color: Color(0xFF9098B1), fontSize: 12))
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/ic_category_woman_bag.png"),
                    const SizedBox(height: 8),
                    const Text("Woman Bag",
                        style:
                            TextStyle(color: Color(0xFF9098B1), fontSize: 12))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Flash Sale",
                  style: TextStyle(
                      color: Color(0xFF223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      color: Color(0xFF40BFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(height: 12),
            GridView.count(
              primary: false,
              shrinkWrap: true,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset("assets/images/logo_blue.png"),
                      Text("FS - Nike Air")
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset("assets/images/logo_blue.png"),
                      Text("FS - Nike Air")
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset("assets/images/logo_blue.png"),
                      Text("FS - Nike Air")
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
