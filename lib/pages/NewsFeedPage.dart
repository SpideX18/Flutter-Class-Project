import 'package:flutter/material.dart';

class NewsFeedPage extends StatefulWidget {
  @override
  _NewsFeedPageState createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text('eWS', style: TextStyle(color: Colors.blue)),
        centerTitle: true,
        elevation: 0,
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // First Row (featured news items)
              Row(
                children: [
                  Expanded(
                    child: buildNewsCard(
                      size,
                      'assets/safaricom_m_pesa.jpg', // Placeholder image
                      'Digital Wallets Are The Killer App For...',
                      'May 24, 2020',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: buildNewsCard(
                      size,
                      'assets/lamp_post.jpg', // Placeholder image
                      '4 Surprising Silver Linings to Crisis...',
                      'May 24, 2020',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // List of articles
              buildArticleCard(
                size,
                'assets/safaricom_m_pesa.jpg', // Placeholder image
                'Recently, there were many pieces about how the new...',
                'Forbes.com',
                'May 24, 2020',
              ),
              buildArticleCard(
                size,
                'assets/lamp_post.jpg', // Placeholder image
                'Opinions expressed by Entrepreneur contributor...',
                'Entrepreneur.com',
                'May 24, 2020',
              ),
              buildArticleCard(
                size,
                'assets/cartoon_image.jpg', // Placeholder image
                'We, as a society, are now experiencing a crisis of...',
                'Cointelegraph.com',
                'May 24, 2020',
              ),
              buildArticleCard(
                size,
                'assets/server.jpg', // Placeholder image
                'Jacob from XenSpec is back with another...',
                'Lowendbox.com',
                'May 24, 2020',
              ),
              buildArticleCard(
                size,
                'assets/author.jpg', // Placeholder image
                'Allen Farrington writes at Quillette, Areo...',
                'Coindesk.com',
                'May 24, 2020',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build a news card
  Widget buildNewsCard(Size size, String imagePath, String title, String date) {
    return Container(
      height: size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  date,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(Icons.play_circle_fill, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Function to build an article card
  Widget buildArticleCard(
      Size size, String imagePath, String content, String source, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width / 4,
            height: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      source,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
