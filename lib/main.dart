import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WorkshopPage(),
    );
  }
}

class WorkshopPage extends StatefulWidget {
  const WorkshopPage({super.key});

  @override
  State<WorkshopPage> createState() => _WorkshopPageState();
}

class _WorkshopPageState extends State<WorkshopPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FB),

      body: SafeArea(
        child: Column(
          children: [

            // ================= HEADER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff2F80ED),
                    Color(0xff56CCF2),
                  ],
                ),

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),

              child: Column(
                children: [

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      Row(
                        children: [

                          Container(
                            padding: const EdgeInsets.all(12),

                            decoration: BoxDecoration(
                              color: Colors.white.withValues(
                                alpha: 0.2,
                              ),

                              borderRadius:
                                  BorderRadius.circular(15),
                            ),

                            child: const Icon(
                              Icons.school,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),

                          const SizedBox(width: 12),

                          const Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              Text(
                                "Workshop",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),

                              Text(
                                "Kampus",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        children: [

                          Container(
                            padding: const EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.white.withValues(
                                alpha: 0.2,
                              ),

                              shape: BoxShape.circle,
                            ),

                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 10),

                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,

                            child: Icon(
                              Icons.person,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // SEARCH
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: "Cari workshop...",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ================= CONTENT =================
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),

                children: [

                  const Text(
                    "Workshop Terbaru",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  workshopCard(
                    icon: Icons.code,
                    title: "Pelatihan Flutter UI",
                    date: "10 Mei 2026",
                    location: "Lab Komputer A",
                    quota: "25 / 30 Peserta",
                  ),

                  const SizedBox(height: 20),

                  workshopCard(
                    icon: Icons.palette,
                    title: "Desain Grafis Canva",
                    date: "15 Mei 2026",
                    location: "Aula Kampus",
                    quota: "40 / 50 Peserta",
                  ),

                  const SizedBox(height: 20),

                  workshopCard(
                    icon: Icons.cloud,
                    title: "Cloud Computing",
                    date: "20 Mei 2026",
                    location: "Ruang Seminar",
                    quota: "18 / 25 Peserta",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // ================= NAVBAR =================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        selectedItemColor: const Color(0xff2F80ED),
        unselectedItemColor: Colors.grey,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: "Kategori",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Pendaftaran",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }

  // ================= CARD =================
  Widget workshopCard({
    required IconData icon,
    required String title,
    required String date,
    required String location,
    required String quota,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Row(
            children: [

              Container(
                padding: const EdgeInsets.all(14),

                decoration: BoxDecoration(
                  color: const Color(0xff2F80ED)
                      .withValues(alpha: 0.1),

                  borderRadius:
                      BorderRadius.circular(18),
                ),

                child: Icon(
                  icon,
                  color: const Color(0xff2F80ED),
                  size: 30,
                ),
              ),

              const SizedBox(width: 15),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          infoRow(Icons.calendar_today, date),

          const SizedBox(height: 10),

          infoRow(Icons.location_on, location),

          const SizedBox(height: 10),

          infoRow(Icons.people, quota),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xff2F80ED),

                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15),
                ),
              ),

              child: const Text(
                "Daftar Sekarang",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoRow(IconData icon, String text) {
    return Row(
      children: [

        Icon(
          icon,
          color: const Color(0xff2F80ED),
          size: 20,
        ),

        const SizedBox(width: 10),

        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}