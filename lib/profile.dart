import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      // backgroundColor: Colors.black,

      //appBar
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: null,
            ),

            const Text(
              'Profile',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade800),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.message_outlined, color: Colors.grey),
                    SizedBox(width: 7),
                    Text(
                      'support',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      //list of options for the body of the page
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
              //Profile
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ash Ketchup',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'member since Dec, 2020',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(7.0),
                      // Optional padding inside the border
                      child: const Icon(
                        Icons.edit_outlined,
                        color:
                            Colors
                                .white, // Ensure the icon color is visible against the background
                      ),
                    ),
                    onPressed: null,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //for the Garage part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade600),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  IconButton(
                    icon: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(12.0),

                      child: const Icon(
                        Icons.directions_car_outlined,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: null,
                  ),

                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'get to know your vehicles, inside out',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        //   textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'CRED garage',
                            style: TextStyle(color: Colors.white),
                            // textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 24),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
              Icons.speed_outlined,
              'credit score',
              'REFRESH AVAILABLE',
              '757',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 12.0,
              ),
              child: Divider(color: Colors.grey.shade600),
            ),

            _buildInfoRow(
              Icons.currency_rupee_outlined,
              'lifetime cashback',
              null,
              '₹3',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 12.0,
              ),
              child: Divider(color: Colors.grey.shade600),
            ),

            _buildInfoRow(
              Icons.account_balance_outlined,
              'bank balance',
              null,
              'check',
            ),

            const SizedBox(height: 20),
            //used a container for the black shade
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      'YOUR REWARDS & BENEFITS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildRewardItem('cashback balance', '₹0'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Divider(color: Colors.grey.shade600),
                  ),
                  _buildRewardItem('coins', '26,46,583'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Divider(color: Colors.grey.shade600),
                  ),
                  _buildRewardItem('win upto Rs 1000', 'refer and earn'),

                  const SizedBox(height: 35),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      'TRANSACTIONS & SUPPORT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTransactionItem('all transactions'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    IconData icon,
    String title,
    String? subtitle,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      child: Row(
        children: [
          IconButton(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              padding: const EdgeInsets.all(4.0),
              // Optional padding inside the border
              child: Icon(icon, color: Colors.grey, size: 16),
            ),
            onPressed: null,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 8),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.greenAccent),
                  ),
              ],
            ),
          ),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          const Icon(Icons.arrow_forward_rounded, size: 24, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildRewardItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(value, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 24, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 24),
        ],
      ),
    );
  }
}
