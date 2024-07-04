import 'package:flutter/material.dart';

class Society {
  String name;
  String insta_url;
  String facebook_url;
  String linkedin_url;
  String image_name;
  // ImageProvider? icon;

  // String? intro;

  Society({
    required this.name,
    required this.insta_url,
    required this.facebook_url,
    required this.linkedin_url,
    required this.image_name,
  });

  static Society fromJson(Map<String, dynamic> json) {
    return Society(
      name: json['name'],
      insta_url: json['insta_url'],
      facebook_url: json['facebook_url'],
      linkedin_url: json['linkedin_url'],
      image_name: json['image_name'],
    );
  }
}

final socJson = [
  {
    "name": "Student Welfare Group",
    "insta_url":
        "https://www.instagram.com/swg.iit_kgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SWGIITKGP",
    "linkedin_url":
        "https://www.linkedin.com/company/student-welfare-group-iit-kharagpur/",
    "image_name": "swg.png"
  },
  {
    "name": "Ambar",
    "insta_url":
        "https://www.instagram.com/ambar_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "(20+) Ambar - IIT Kharagpur | Facebook",
    "linkedin_url": "Ambar IIT Kharagpur: Overview | LinkedIn",
    "image_name": "ambar.jpeg"
  },
  {
    "name": "Aroma",
    "insta_url":
        "https://www.instagram.com/aroma.iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/aroma.iitkgp",
    "linkedin_url":
        "https://www.linkedin.com/company/technology-culinary-arts-society/",
    "image_name": "aroma.jpeg"
  },
  {
    "name": "Awaaz",
    "insta_url":
        "https://www.instagram.com/awaaziitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/awaaziitkgp",
    "linkedin_url": "Awaaz, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "awaaz.jpeg"
  },
  {
    "name": "Blockchain",
    "insta_url":
        "https://www.instagram.com/blockchainkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/blockchainkgp",
    "linkedin_url": "https://www.linkedin.com/company/blockchainkgp/",
    "image_name": "blockchainkgp.png"
  },
  {
    "name": "Breakfree: Technology dance Society",
    "insta_url":
        "https://www.instagram.com/breakfreeiitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/Breakfreenowornever",
    "linkedin_url":
        "https://www.linkedin.com/company/technology-dance-society-iit-kharagpur/",
    "image_name": "breakfree.png"
  },
  {
    "name": "Business Club",
    "insta_url":
        "https://www.instagram.com/bclub.iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/bclubkgp",
    "linkedin_url": "https://www.linkedin.com/company/bclubiitkgp/",
    "image_name": "bclub.png"
  },
  {
    "name": "CGS IIT-KGP",
    "insta_url":
        "https://www.instagram.com/iitkgp.cgs?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/cgsiitkgp",
    "linkedin_url": "Computer Graphics Society: Overview | LinkedIn",
    "image_name": "cgs.png"
  },
  {
    "name": "Click KGP",
    "insta_url":
        "https://www.instagram.com/clickkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/clickkgp",
    "linkedin_url": "Click KGP: Overview | LinkedIn",
    "image_name": "clickkgp.png"
  },
  {
    "name": "Code Club",
    "insta_url":
        "https://www.instagram.com/code_club_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/CodeClubKgp",
    "linkedin_url": "https://www.linkedin.com/company/code-club-iitkgp/",
    "image_name": "codeclub.jpg"
  },
  {
    "name": "Debating Society",
    "insta_url":
        "https://www.instagram.com/debsoc_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/debsoc.iitkgp",
    "linkedin_url": "Debating Society, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "debsoc.png"
  },
  {
    "name": "E-Cell",
    "insta_url":
        "https://www.instagram.com/ecell_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/ecell.iitkgp",
    "linkedin_url": "https://www.linkedin.com/company/e-cell-iit-kharagpur/",
    "image_name": "ecell.jpg"
  },
  {
    "name": "Enactus IIT Kharagpur",
    "insta_url":
        "https://www.instagram.com/enactus_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/EnactusIITKgp",
    "linkedin_url": "Enactus IIT Kharagpur: Overview | LinkedIn",
    "image_name": "enactus.png"
  },
  {
    "name": "ETMS",
    "insta_url":
        "https://www.instagram.com/etms_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/etmsiitkgp",
    "linkedin_url": "ETMS, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "etms.png"
  },
  {
    "name": "Finance Club",
    "insta_url":
        "https://www.instagram.com/financeclub_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/FinanceClubIITKgp",
    "linkedin_url": "Finance Club, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "financeclub.png"
  },
  {
    "name": "Gopali Youth Welfare Society",
    "insta_url":
        "https://www.instagram.com/gyws_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/GYWS.KGP",
    "linkedin_url":
        "https://www.linkedin.com/company/gopali-youth-welfare-society/",
    "image_name": "gyws.jpeg"
  },
  {
    "name": "Inter Hall Football League",
    "insta_url":
        "https://www.instagram.com/interhallfootballleague?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/ihflkgp",
    "linkedin_url":
        "Inter Hall Football League, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "ihfl.png"
  },
  {
    "name": "Knowledge Sharing Club",
    "insta_url":
        "https://www.instagram.com/knowledge_sharing_club?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/KnowledgeSharingClub",
    "linkedin_url":
        "Knowledge Sharing Club, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "kss.png"
  },
  {
    "name": "Koss",
    "insta_url":
        "https://www.instagram.com/koss_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/KossIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/koss-iitkgp/",
    "image_name": "koss.jpeg"
  },
  {
    "name": "Krittika",
    "insta_url":
        "https://www.instagram.com/krittikaiitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/KrittikaIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/krittikaiitkgp/",
    "image_name": "krittika.jpeg"
  },
  {
    "name": "Makerspace",
    "insta_url":
        "https://www.instagram.com/makerspace_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/MakerspaceIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/makerspace-iitkgp/",
    "image_name": "makerspace.png"
  },
  {
    "name": "Masquerade",
    "insta_url":
        "https://www.instagram.com/masquerade_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/MasqueradeIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/masquerade-iitkgp/",
    "image_name": "masquerade.png"
  },
  {
    "name": "Spectra",
    "insta_url":
        "https://www.instagram.com/spectra_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SpectraIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/spectra-iitkgp/",
    "image_name": "spectra.jpg"
  },
  {
    "name": "Pravah",
    "insta_url":
        "https://www.instagram.com/pravah_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/PravahIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/pravah-iitkgp/",
    "image_name": "pravah.jpeg"
  },
  {
    "name": "Quant Club",
    "insta_url":
        "https://www.instagram.com/quantclub_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/QuantClubIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/quant-club-iitkgp/",
    "image_name": "quant club.png"
  },
  {
    "name": "Quiz Club",
    "insta_url":
        "https://www.instagram.com/quizclub_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/QuizClubIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/quiz-club-iitkgp/",
    "image_name": "quiz club.png"
  },
  {
    "name": "RadioG",
    "insta_url":
        "https://www.instagram.com/radiog_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/RadioGIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/radiog-iitkgp/",
    "image_name": "radiog.png"
  },
  {
    "name": "RCA",
    "insta_url":
        "https://www.instagram.com/rca_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/RCAIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/rca-iitkgp/",
    "image_name": "rca.png"
  },
  {
    "name": "RMO",
    "insta_url":
        "https://www.instagram.com/rmo_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/RMOIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/rmo-iitkgp/",
    "image_name": "rmo.png"
  },
  {
    "name": "Robotics Club",
    "insta_url":
        "https://www.instagram.com/robotics_club_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/RoboticsClubIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/robotics-club-iitkgp/",
    "image_name": "roboticsclub.png"
  },
  {
    "name": "Sahaayak",
    "insta_url":
        "https://www.instagram.com/sahaayak_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SahaayakIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/sahaayak-iitkgp/",
    "image_name": "sahaayak.png"
  },
  {
    "name": "Sanskriti",
    "insta_url":
        "https://www.instagram.com/sanskriti_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SanskritiIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/sanskriti-iitkgp/",
    "image_name": "sanskriti.png"
  },
  {
    "name": "Science and Technology Council",
    "insta_url":
        "https://www.instagram.com/scitech_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/ScitechIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/scitech-iitkgp/",
    "image_name": "scitech.png"
  },
  {
    "name": "Spectra",
    "insta_url":
        "https://www.instagram.com/spectra_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SpectraIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/spectra-iitkgp/",
    "image_name": "spectra.jpg"
  },
  {
    "name": "Student Mentorship Program",
    "insta_url":
        "https://www.instagram.com/smp_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SMP-IIT-KGP",
    "linkedin_url": "https://www.linkedin.com/company/smp-iitkgp/",
    "image_name": "smp.png"
  },
  {
    "name": "SWARM Robotics",
    "insta_url":
        "https://www.instagram.com/swarmrobotics_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/SWARMRoboticsIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/swarm-robotics-iitkgp/",
    "image_name": "swarm.png"
  },
  {
    "name": "Technology Music Society",
    "insta_url":
        "https://www.instagram.com/tms_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/TMSIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/tms-iitkgp/",
    "image_name": "tms.png"
  },
  {
    "name": "Technology Quiz Club",
    "insta_url":
        "https://www.instagram.com/tqc_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/TQCIITKgp",
    "linkedin_url": "https://www.linkedin.com/company/tqc-iitkgp/",
    "image_name": "tqc.png"
  },
  {
    "name": "The Kgpian Game Theory Society",
    "insta_url":
        "https://www.instagram.com/kgts_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/The.KGTS",
    "linkedin_url":
        "https://www.linkedin.com/company/the-kgpian-game-theory-society/",
    "image_name": "game_theory.png"
  },
  {
    "name": "The Scholars' Avenue",
    "insta_url":
        "https://www.instagram.com/scholarsavenue?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/scholarsavenue",
    "linkedin_url": "https://www.linkedin.com/company/the-scholars'-avenue/",
    "image_name": "scholars_avenue.png"
  },
  {
    "name": "TMES",
    "insta_url":
        "https://www.instagram.com/tmes_iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/profile.php?id=100054504698718",
    "linkedin_url": "https://www.linkedin.com/company/tmes-iitkgp/",
    "image_name": "tmes.png"
  },
  {
    "name": "Western technology music society",
    "insta_url":
        "https://www.instagram.com/wtmsiitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/wtmsiitkgp",
    "linkedin_url":
        "https://www.linkedin.com/company/western-technology-music-society/",
    "image_name": "wtms.png"
  },
  {
    "name": "180 Degrees Consulting",
    "insta_url":
        "https://www.instagram.com/180dc.iitkgp?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/180dckgp",
    "linkedin_url": "https://www.linkedin.com/company/180degreesconsulting/",
    "image_name": "180dc.png"
  },
  {
    "name": "Technology Comedy Club",
    "insta_url":
        "https://www.instagram.com/comedy_club_iit_kharagpur?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==",
    "facebook_url": "https://www.facebook.com/comedyclubiitkgp",
    "linkedin_url":
        "Technology Comedy Club, IIT Kharagpur: Overview | LinkedIn",
    "image_name": "comedy_club.png"
  }
];
