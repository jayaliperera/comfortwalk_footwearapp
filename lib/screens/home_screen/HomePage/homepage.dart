import 'package:comfortwalk_footwear/components/custom_text/custom_poppins_text.dart';
import 'package:comfortwalk_footwear/models/sneaker_model.dart';
import 'package:comfortwalk_footwear/screens/home_screen/HomePage/widget/action_bar.dart';
import 'package:comfortwalk_footwear/utils/demo_data.dart';
import 'package:flutter/material.dart';

import 'widget/custom_slider.dart';
import 'widget/product_grid.dart';
import 'widget/top_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SneakerModel> sneakers = DemoData.sneakers;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomActionBar(),
                const SizedBox(
                  height: 8,
                ),
                const CustomPoppinsText(
                  text: "Hello Kamal",
                  fontWeight: FontWeight.w500,
                ),
                CustomPoppinsText(
                  text: "Let's start shopping",
                  fontSize: 17,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomSlider(),
                const SizedBox(
                  height: 10,
                ),
                TopCategories(),
                ProductGrid(sneakers: sneakers)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
