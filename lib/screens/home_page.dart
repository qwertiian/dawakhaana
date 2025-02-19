import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/profile_placeholder.png"), // Add an image in assets
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for medicines...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildBannerSection(),
          _buildVendorSection(),
          _buildCategorySection(),
        ],
      ),
    );
  }

  Widget _buildBannerSection() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text("Special Offers & Coupons!", style: TextStyle(fontSize: 18))),
    );
  }

  Widget _buildVendorSection() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Text("Are you a Pharmacy?"),
            SizedBox(height: 5),
            ElevatedButton(onPressed: () {}, child: Text("Join Us")),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return Column(
      children: [
        _buildCategoryTile("Common Medicines"),
        _buildCategoryTile("Sexual Wellness"),
        _buildCategoryTile("Health Supplements"),
      ],
    );
  }

  Widget _buildCategoryTile(String title) {
    return ListTile(
      leading: Icon(Icons.medical_services),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
}
