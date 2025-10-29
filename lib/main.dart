import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Content behind (scrollable area)
            Column(
              children: [
            // Top Navigation Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FeatherIcons.settings, size: 24),
                  Row(
                    children: [
                      const Text(
                        'manuelroviradesign',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(FeatherIcons.chevronDown, size: 20),
                    ],
                  ),
                  const Icon(FeatherIcons.menu, size: 24),
                ],
              ),
            ),
            
            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 84),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Stats Section
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Followers
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  '23.6K',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Profile Picture with Story Ring
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFCAF45),
                                  Color(0xFFFD1D1D),
                                  Color(0xFFE1306C),
                                ],
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  'https://via.placeholder.com/150',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 80,
                                      height: 80,
                                      color: Colors.grey[300],
                                      child: Icon(
                                        FeatherIcons.user,
                                        color: Colors.grey[600],
                                        size: 36,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          
                          // Following
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  '488',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Name and Bio
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Manuel Rovira',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Photographer',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[800],
                                height: 1.3,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Like to travel and shoot cinematic and b/w photos.\n',
                                ),
                                TextSpan(
                                  text: 'Tools - Capture One for Raw ',
                                ),
                                TextSpan(
                                  text: '@photolove21',
                                  style: TextStyle(
                                    color: Color(0xFF00376B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Action Buttons
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                side: BorderSide(color: Colors.grey[300]!),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Edit profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                side: BorderSide(color: Colors.grey[300]!),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Statistics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                backgroundColor: const Color(0xFF0095F6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Contact',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Story Highlights
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          _buildHighlight(FeatherIcons.plusCircle, 'New'),
                          _buildHighlight(FeatherIcons.navigation, 'Travels'),
                          _buildHighlight(FeatherIcons.smile, 'Cool'),
                          _buildHighlight(FeatherIcons.heart, 'Scot'),
                          _buildHighlight(FeatherIcons.umbrella, 'Holidays'),
                          _buildHighlight(FeatherIcons.coffee, 'D...'),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    // Content Navigation
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[300]!),
                        ),
                      ),
                      child: Row(
                        children: [
                          _buildNavTab(FeatherIcons.grid, true),
                          _buildNavTab(FeatherIcons.video, false),
                          _buildNavTab(FeatherIcons.user, false),
                          _buildNavTab(FeatherIcons.playCircle, false),
                          _buildNavTab(FeatherIcons.link, false),
                          _buildNavTab(FeatherIcons.bookmark, false),
                        ],
                      ),
                    ),
                    
                    // Photo Grid
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      children: [
                        _buildGridItem('https://via.placeholder.com/300/4FC3F7'),
                        _buildGridItem('https://via.placeholder.com/300/FFD54F'),
                        _buildGridItem('https://via.placeholder.com/300/64B5F6'),
                        _buildGridItem('https://via.placeholder.com/300/FFB74D'),
                        _buildGridItem('https://via.placeholder.com/300/9575CD'),
                        _buildGridItem('https://via.placeholder.com/300/FFA726'),
                        _buildGridItem('https://via.placeholder.com/300/81C784'),
                        _buildGridItem('https://via.placeholder.com/300/E57373'),
                        _buildGridItem('https://via.placeholder.com/300/90CAF9'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
              ],
            ),

            // Floating, fixed Bottom Navigation Bar
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                top: false,
                child: Material(
                  elevation: 8,
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildBottomNavItem(FeatherIcons.home, false),
                          _buildBottomNavItem(FeatherIcons.search, false),
                          _buildBottomNavItem(FeatherIcons.plusSquare, false),
                          Stack(
                            children: [
                              _buildBottomNavItem(FeatherIcons.heart, false),
                              Positioned(
                                right: 8,
                                top: 8,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          _buildBottomNavItem(FeatherIcons.user, true),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildHighlight(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[300]!, width: 1),
            ),
            child: Icon(icon, size: 28, color: Colors.grey[700]),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildNavTab(IconData icon, bool isActive) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.black : Colors.transparent,
              width: 1,
            ),
          ),
        ),
        child: Icon(
          icon,
          size: 24,
          color: isActive ? Colors.black : Colors.grey[400],
        ),
      ),
    );
  }
  
  Widget _buildGridItem(String imageUrl) {
    return Container(
      color: Colors.grey[300],
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Icon(
              FeatherIcons.image,
              color: Colors.grey[600],
              size: 28,
            ),
          );
        },
      ),
    );
  }
  
  Widget _buildBottomNavItem(IconData icon, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Icon(
        icon,
        size: 28,
        color: isActive ? Colors.black : Colors.grey[600],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InstagramProfileScreen(),
  ));
}