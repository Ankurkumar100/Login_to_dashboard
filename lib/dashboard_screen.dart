import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardScreen(
        title: 'Dashboard',
      ),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.title});

  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        actions: const [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 200, right: 250),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 200),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 40),
              Padding(
                padding: EdgeInsets.only(right: 11, bottom: 200),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 18, 4, 204),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 18, 4, 204),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 30, bottom: 111),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/profile.png"),
                            radius: 30,
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25, top: 15),
                          child: Column(
                            children: [
                              Text(
                                "Hello",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                "Ankur",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Quick Actions',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 18, 4, 204),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.receipt,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Bill",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.power_settings_new,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Disconnect",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.swap_horiz,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Transfer",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Service",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.report_problem,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Complian",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.update,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Update",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.link_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Connect",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.warning,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Outage",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                      ),

                      // _buildActionItem('Outage', Icons.warning),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gas | SA1234567',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildBillItem('Bills', '20 Jan 2020', 43, Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.grid_view,
                          color: Colors.blue,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.trending_up,
                          color: Colors.blue,
                        ),
                        Text(
                          "Usage",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.history,
                          color: Colors.blue,
                        ),
                        Text(
                          "History",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.headset_mic,
                          color: Colors.blue,
                        ),
                        Text(
                          "Support",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                // _buildBottomNavItem('Dashboard', Icons.dashboard),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBillItem(String title, String date, int amount, Color color) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: color,
            ),
            child: Text(
              '\$$amount',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
