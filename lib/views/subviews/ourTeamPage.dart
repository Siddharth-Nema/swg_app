import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/data/teamMembersData.dart';
import 'package:swg_flutter/models/TeamMember.dart';
import 'package:url_launcher/url_launcher.dart';

class OurTeamPage extends StatefulWidget {
  @override
  State<OurTeamPage> createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> sessions = ['2021-22', '2022-23', '2023-24', '2024-25'];
  String selectedSession = '2023-24';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 1.0,
          toolbarHeight: 120,
          title: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Our Team',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     const Text(
              //       'Session : ',
              //       style: TextStyle(color: Colors.black54, fontSize: 16),
              //     ),
              //     const SizedBox(width: 8),
              //     DropdownButton<String>(
              //       items: sessions.map((String value) {
              //         return DropdownMenuItem<String>(
              //           value: value,
              //           child: Text(value),
              //         );
              //       }).toList(),
              //       onChanged: (String? value) {
              //         setState(() {
              //           selectedSession = value!;
              //         });
              //       },
              //       hint: const Text('Select Session'),
              //       value: selectedSession,
              //       borderRadius: BorderRadius.circular(8),
              //       icon: const Icon(Icons.arrow_drop_down),
              //       iconSize: 24,
              //       elevation: 16,
              //       style: const TextStyle(color: Colors.black, fontSize: 16),
              //       underline: Container(
              //         height: 2,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              // color: GlobalStyles.kPrimaryBlueColor,
              decoration: BoxDecoration(
                color: GlobalStyles.kPrimaryBlueColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicator: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                labelStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                tabs: const [
                  Tab(
                    // child: Text('Student Members'),
                    text: 'Student Members',
                  ),
                  Tab(
                    text: 'Heads',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: TeamMember.fetchTeamMembers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              //List<TeamMember> teamMembers = snapshot.data as List<TeamMember>;
              return TabBarView(
                controller: _tabController,
                children: [
                  TeamGridView(
                    teamMembers: SMData.map<TeamMember>(
                      (e) {
                        return TeamMember.fromJson(e);
                      },
                    ).toList(),
                  ),
                  TeamGridView(
                    teamMembers: HeadData.map<TeamMember>(
                      (e) {
                        return TeamMember.fromJson(e);
                      },
                    ).toList(),
                  ),
                  // const Center(child: Text('Heads')),
                ],
              );
            }
          }
        },
      ),
    );
  }
}

class TeamGridView extends StatelessWidget {
  List<TeamMember> teamMembers;

  TeamGridView({
    super.key,
    required this.teamMembers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 163, 234, 254),
          color: GlobalStyles.kPrimaryBlueColor,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(24))),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        children: teamMembers.map((member) {
          return TeamCard(member: member);
        }).toList(),
      ),
    );
  }
}

class TeamCard extends StatelessWidget {
  final TeamMember member;

  const TeamCard({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.network(
                    "https://drive.usercontent.google.com/download?id=${member.imageUrl.split("id=")[1]}&export=view&authuser=0",
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    // borderRadius:
                    // BorderRadius.vertical(top: Radius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    member.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF1BF57), // Gold color
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    member.rollNo,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // launch(member.fbLink);
                          launchUrl(Uri.parse(member.instaUrl));
                        },
                        child: Image.asset(
                          'assets/icons/insta.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          // launch(member.fbLink);
                          launchUrl(Uri.parse(member.facebookUrl));
                        },
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          // launch(member.fbLink);
                          launchUrl(Uri.parse(member.linkedinUrl));
                        },
                        child: Image.asset(
                          'assets/icons/linked.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon(String link) {
    switch (link) {
      case 'fb':
        return Icons.facebook;
      case 'insta':
        return Icons.camera_alt;
      case 'linkedin':
        return Icons.link;
      default:
        return Icons.link;
    }
  }
}
