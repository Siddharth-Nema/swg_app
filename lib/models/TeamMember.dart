import 'package:cloud_firestore/cloud_firestore.dart';

class TeamMember {
  final String name;
  final String rollNo;
  final String imageUrl;
  final String smAcademicSession;
  final String? headAcademicSession;
  final String facebookUrl;
  final String instaUrl;
  final String linkedinUrl;

  TeamMember({
    required this.name,
    required this.rollNo,
    required this.imageUrl,
    required this.smAcademicSession,
    this.headAcademicSession,
    required this.facebookUrl,
    required this.linkedinUrl,
    required this.instaUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rollNo': rollNo,
      'imageUrl': imageUrl,
      'smAcademicSession': smAcademicSession,
      'headAcademicSession': headAcademicSession,
      'facebookUrl': facebookUrl,
      'linkedinUrl': linkedinUrl,
      'instaUrl': instaUrl,
    };
  }

  static fromJson(Map<String, dynamic> json) {
    return TeamMember(
      name: json['name'],
      rollNo: json['rollNo'],
      imageUrl: json['imageUrl'],
      smAcademicSession: json['smAcademicSession'],
      headAcademicSession: json['headAcademicSession'],
      facebookUrl: json['facebookUrl'],
      linkedinUrl: json['linkedinUrl'],
      instaUrl: json['instaUrl'],
    );
  }

  static Future<List<TeamMember>> fetchTeamMembers() async {
    final firestore = FirebaseFirestore.instance;
    final snapshot = await firestore.collection('team-members').get();

    List<TeamMember> teamMembers = [];
    snapshot.docs.forEach((doc) {
      teamMembers.add(TeamMember.fromJson(doc.data()));
    });
    return teamMembers;
  }
}

// List<TeamMember> teamMembers = [
//   TeamMember(
//     name: "Bhavy Vaishnav",
//     rollNo: "23AR10009",
//     imageUrl:
//         "https://drive.google.com/open?id=12WDtHyhPPsUDPp_GtB-_Swr76YFl1kM-",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/profile.php?id=61551083754367",
//     linkedinUrl:
//         "https://www.linkedin.com/in/bhavyvaishnav-kgpian/overlay/urn:li:fsd_profilePosition:(ACoAADr11_ABzBJQ5mK3qWTeZjFGqsIBONg9VuI,2249698255)/skill-associations-details/",
//     instaUrl: "https://www.instagram.com/bhavy11vaishnav/",
//   ),
//   TeamMember(
//     name: "Shourya Godha",
//     rollNo: "23CS30050",
//     imageUrl:
//         "https://drive.google.com/open?id=1LKyet6iZRfQu4TVjJ7_yQG7yTgNKJ0R0",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/shourya.godha",
//     linkedinUrl: "https://www.linkedin.com/in/shourya-godha-73050b28a/",
//     instaUrl: "https://www.instagram.com/shourya_godha/",
//   ),
//   TeamMember(
//     name: "Gaurang Mehra",
//     rollNo: "23AG30017",
//     imageUrl:
//         "https://drive.google.com/open?id=13RRoB02Ur5KWoNMBy7JDZPMTY0O4FQRy",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100074070572990&mibextid=ZbWKwL",
//     linkedinUrl:
//         "https://www.linkedin.com/in/gaurang-mehra-177700196?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/gaurangmehraaa?igsh=eGpmdHhpZHgyZ2g0",
//   ),
//   TeamMember(
//     name: "Shivam Bisen ",
//     rollNo: "22AR10028",
//     imageUrl:
//         "https://drive.google.com/open?id=1dvLM-79NZoINDdsPFThHqMP052hSvhlB",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "2024-25",
//     facebookUrl:
//         "https://www.facebook.com/share/6sCLi7KtsUxzmonU/?mibextid=qi2Omg",
//     linkedinUrl:
//         "https://www.linkedin.com/in/shivam-bisen-812927250?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/_shivom_b?igsh=MWVqa3gzOHFzbGQ0dg==",
//   ),
//   TeamMember(
//     name: "Sahil Asawa",
//     rollNo: "22CS10065",
//     imageUrl:
//         "https://drive.google.com/open?id=15WEnm2M4MY52qssc6Dv-zCumIeP_GmwJ",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "2024-25",
//     facebookUrl: "https://www.facebook.com/profile.php?id=100087187377653",
//     linkedinUrl: "https://www.linkedin.com/in/sahil-asawa-/",
//     instaUrl: "",
//   ),
//   TeamMember(
//     name: "Thota Rithvik ",
//     rollNo: "23CS10072",
//     imageUrl:
//         "https://drive.google.com/open?id=1-1-XCiIsJrwVTY1EA0Yr4DhMlLo_l6lK",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/profile.php?id=61550776423104",
//     linkedinUrl: "https://www.linkedin.com/in/rithvik-thota-17a7b1290/",
//     instaUrl: "",
//   ),
//   TeamMember(
//     name: "Harshil Agarwal",
//     rollNo: "23MI10019",
//     imageUrl:
//         "https://drive.google.com/open?id=1RiPGHCclj8uJ62R7gzZHy2Ob3ww3hO2B",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/share/SPqBbLWh9P5hDMiX/?mibextid=qi2Omg",
//     linkedinUrl:
//         "https://www.linkedin.com/in/harshil-agarwal-76815628b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/harshil_kiwi?igsh=aXpvdG93ZTZmdGQ=",
//   ),
//   TeamMember(
//     name: "Ishan Phanse ",
//     rollNo: "23AE10015",
//     imageUrl:
//         "https://drive.google.com/open?id=1IkgCr5rFgfBB-6pH6ass3nmMxyMxFHw0",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100093308065829&mibextid=ZbWKwL",
//     linkedinUrl:
//         "https://www.linkedin.com/in/ishan-phanse-003555288?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/ishan_ph2005?igsh=djFtNTg5b3doYjJq",
//   ),
//   TeamMember(
//     name: "Arkajyoti Dey",
//     rollNo: "23IE10008",
//     imageUrl:
//         "https://drive.google.com/open?id=1d_UtBoRHer4zS4qRlSUWxt0ybZCoE9RM",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/profile.php?id=61551235101208",
//     linkedinUrl: "https://www.linkedin.com/in/arkajyoti-dey-b5a409255/",
//     instaUrl: "https://www.instagram.com/whynot_jyoti?igsh=YWg0NnRhdW90eTg2",
//   ),
//   TeamMember(
//     name: "Biri Yachu",
//     rollNo: "23BT30010",
//     imageUrl:
//         "https://drive.google.com/open?id=1vp2SJFUvGdsm3Kere3a6QLdQGs6vJLdl",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100095030183603&mibextid=ZbWKwL",
//     linkedinUrl:
//         "https://www.linkedin.com/in/biri-yachu-a026a6290?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/biriyachu?igsh=MTBuZDJoMm1oeHhiNA==",
//   ),
//   TeamMember(
//     name: "Aryan Lohia",
//     rollNo: "23EE10012",
//     imageUrl:
//         "https://drive.google.com/open?id=1eL_tEybbEh3FNvRz6vs25Dd7AdC0iCuy",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/aryan.lohia.52687",
//     linkedinUrl: "https://www.linkedin.com/in/aryan-lohia-a46b52213/",
//     instaUrl:
//         "https://www.instagram.com/lohia.aryan12?igsh=MXJhMTZ6MWFsNWppOA%3D%3D&utm_source=qr",
//   ),
//   TeamMember(
//     name: "Siddharth Nema",
//     rollNo: "23MI10045",
//     imageUrl:
//         "https://drive.google.com/open?id=1O-gGh0d_MgT-ifLaW7AcUZNZEA6Akh7S",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100095695266834&mibextid=ZbWKwL",
//     linkedinUrl:
//         "https://www.linkedin.com/in/siddharth-nema-878142290?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "https://www.instagram.com/siddharth._nema?igsh=bWFzcTg3ZWVyNTIy",
//   ),
//   TeamMember(
//     name: "Harsh Gurjar",
//     rollNo: "23GG10020",
//     imageUrl:
//         "https://drive.google.com/open?id=1H9LU1kwPCT_Flah1GUHFFqkYK-j17Boa",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100012078606272&name=xhp_nt__fb__action__open_user",
//     linkedinUrl:
//         "https://www.linkedin.com/in/harsh-gurjar-0504bb290?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "",
//   ),
//   TeamMember(
//     name: "Priyanshu Raj",
//     rollNo: "22AR10018",
//     imageUrl:
//         "https://drive.google.com/open?id=1lyPelc7wj-NvoElzq6xEX8LVw_mDoukZ",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/priyanshu.rajsingh.98?mibextid=LQQJ4d",
//     linkedinUrl:
//         "https://www.linkedin.com/in/priyanshu-raj-182600259?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app",
//     instaUrl:
//         "https://www.instagram.com/itz_raj_0407?igsh=bWF1MnNsNDd5em9l&utm_source=qr",
//   ),
//   TeamMember(
//     name: "Ansh kakkar",
//     rollNo: "22IM10009",
//     imageUrl:
//         "https://drive.google.com/open?id=19IwML0wAqM4ArYCZzodWpbnUm0zeTLUg",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/ansh.kakkar.902?mibextid=LQQJ4d",
//     linkedinUrl: "http://linkedin.com/in/ansh-kakkar-293ab9259",
//     instaUrl:
//         "https://www.instagram.com/ansh_kakkar19?igsh=M3kzb3lpbnBld3po&utm_source=qr",
//   ),
//   TeamMember(
//     name: "Bhawesh Kukreja",
//     rollNo: "22AR10003",
//     imageUrl:
//         "https://drive.google.com/open?id=1z5sVUhgmzqw2e6Ev119qOqt7C95W8DcI",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "2024-25",
//     facebookUrl: "https://www.facebook.com/bhawesh.kukreja.5/",
//     linkedinUrl: "https://www.linkedin.com/in/bhawesh-kukreja-430a46257/",
//     instaUrl: "https://www.instagram.com/bhawesh__kukreja/?hl=en",
//   ),
//   TeamMember(
//     name: "Tanush B Agarwal",
//     rollNo: "23IM10040",
//     imageUrl:
//         "https://drive.google.com/open?id=1KpMxLYmnRqH-OLMXCF3_QnovkejV8Skl",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=61550918732863&mibextid=kFxxJD",
//     linkedinUrl:
//         "https://www.linkedin.com/in/tanush-agarwal-83893727a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl:
//         "https://www.instagram.com/tanushagarwal128?igsh=a2Q3MTdzZDFqZjAy",
//   ),
//   TeamMember(
//     name: "Ashish Reddy",
//     rollNo: "23GG10035",
//     imageUrl:
//         "https://drive.google.com/open?id=1ea-IUzl9R2FQDx2ooGMHIGqSN7qwQZ-d",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/ashish.wonder.1",
//     linkedinUrl: "https://www.linkedin.com/in/ashish-reddy-9804a3303/",
//     instaUrl: "https://www.instagram.com/ashishreddy_02?igsh=bDFqczdoaGE0dGJ5",
//   ),
//   TeamMember(
//     name: "Moli Maheshwari",
//     rollNo: "23MF10025",
//     imageUrl:
//         "https://drive.google.com/open?id=16aj6Q9RYcZe3ukbFC5voQxnteAV-QOn4",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=61550226501699&sk=about",
//     linkedinUrl: "www.linkedin.com/in/moli-maheshwari-9b796a285",
//     instaUrl: "https://www.instagram.com/justt.moli/",
//   ),
//   TeamMember(
//     name: "Jai Raj",
//     rollNo: "23EC10031",
//     imageUrl:
//         "https://drive.google.com/open?id=1RvBQ1F1gJGgsIX4WS7jvL0UaGX1wmPMY",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/imjairaj/",
//     linkedinUrl: "https://www.linkedin.com/in/j-raj",
//     instaUrl: "https://www.instagram.com/me.jairaj/",
//   ),
//   TeamMember(
//     name: "Dnyaneshwari Ghare",
//     rollNo: "23IM30008",
//     imageUrl:
//         "https://drive.google.com/open?id=1YzdA7TuiMDjI3Sm9qKPBM3-FsB2vDSL-",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=61550666596899&mibextid=ZbWKwL",
//     linkedinUrl: "https://www.linkedin.com/in/dnyaneshwari-ghare-9a274928b",
//     instaUrl: "https://www.instagram.com/dnyanamite_?igsh=MTRqMTNvMzA0aml5Zw==",
//   ),
//   TeamMember(
//     name: "Himanshu Jangir",
//     rollNo: "23BT30015",
//     imageUrl:
//         "https://drive.google.com/open?id=1rTIvjZYDWeJC08c-b0KtdYnGP4vFnenS",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/people/Himanshu-Jangir/pfbid0sDTWqxYeetk6xquyJpfrWXTTUearxMWewiKQ4SSwAhrNR2daxoVtUVUFaHQJ68oxl/?sk=about",
//     linkedinUrl: "https://www.linkedin.com/in/himanshu-jangir-868271290/",
//     instaUrl: "https://www.instagram.com/himanshujangir2459/?next=%2F",
//   ),
//   TeamMember(
//     name: "Katyayani Khola ",
//     rollNo: "23EE10029",
//     imageUrl:
//         "https://drive.google.com/open?id=1_Z8Awmik0m9vFDm8wl8j_i8tfOZ8luHQ",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl:
//         "https://www.facebook.com/profile.php?id=100094388406906&mibextid=ZbWKwL",
//     linkedinUrl:
//         "https://www.linkedin.com/in/katyayani-khola-00aa35293?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
//     instaUrl: "",
//   ),
//   TeamMember(
//     name: "Aaradhya Shukla ",
//     rollNo: "23CH10001 ",
//     imageUrl:
//         "https://drive.google.com/open?id=18xCrSug-R8jKD7i1bKn0-J6zLAyS_rPF",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/aaradhya1729?mibextid=ZbWKwL",
//     linkedinUrl: "https://www.linkedin.com/in/aaradhya-shukla-205289280",
//     instaUrl:
//         "https://www.instagram.com/aaradhya_itis?igsh=MWo1bGZ3dGhoeXJmaQ==",
//   ),
//   TeamMember(
//     name: "Bhukya Shashi Kumar",
//     rollNo: "23EE10014",
//     imageUrl:
//         "https://drive.google.com/open?id=1LNjd3Ofp-jpIOyt_7-IctLWfX0xq60Fp",
//     smAcademicSession: "2024-25",
//     headAcademicSession: "null",
//     facebookUrl: "https://www.facebook.com/narsimha.bhukya.775/",
//     linkedinUrl: "https://www.linkedin.com/me?trk=p_mwlite_feed-secondary_nav",
//     instaUrl: "https://www.instagram.com/shashikumarbhukya/",
//   ),
//   TeamMember(
//     name: "Shravan Barad",
//     rollNo: "22GG10046",
//     imageUrl:
//         "https://drive.google.com/open?id=1nbl7oT6R4U3CciEuE9qar6bK5Xx_Hkax",
//     smAcademicSession: "2023-24",
//     headAcademicSession: "2024-25",
//     facebookUrl: "https://www.facebook.com/shravan.barad",
//     linkedinUrl: "https://www.linkedin.com/in/shravan-barad-290923257/",
//     instaUrl: "https://www.instagram.com/shrvn.21/",
//   ),
// ];
