import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swg_flutter/constants.dart';

class MentorMenteePage extends StatefulWidget {
  const MentorMenteePage({super.key});

  @override
  _MentorMenteePageState createState() => _MentorMenteePageState();
}

class _MentorMenteePageState extends State<MentorMenteePage> {
  final TextEditingController _rollNoController = TextEditingController();
  Map<String, dynamic>? mentorData;
  List<Map<String, dynamic>> coMentees = [];

  @override
  void initState() {
    super.initState();
    _rollNoController.addListener(() {
      final text = _rollNoController.text.toUpperCase();
      _rollNoController.value = _rollNoController.value.copyWith(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );
    });
  }

  @override
  void dispose() {
    _rollNoController.dispose();
    super.dispose();
  }

  Future<void> fetchMenteeData(String rollNo) async {
    final collection =
        FirebaseFirestore.instance.collection('MentorMenteeData');
    final menteeSnapshot =
        await collection.where('Roll No', isEqualTo: rollNo).get();

    if (menteeSnapshot.docs.isNotEmpty) {
      final menteeData = menteeSnapshot.docs.first.data();

      final mentorName = menteeData['Mentor Name'] != "NaN"
          ? menteeData['Mentor Name']
          : menteeData['Roll No. 1'];
      final mentorRollNo = menteeData['Roll no.'].toString() != "NaN"
          ? menteeData['Mentor Roll No']
          : menteeData['Roll No.1'];

      mentorData = {
        'Name': mentorName,
        'Roll No': mentorRollNo,
        'Email': menteeData['Mentor Email'],
        'Mobile': menteeData['Mentor Mobile'],
      };

      final coMenteesSnapshot =
          await collection.where('Mentor Name', isEqualTo: mentorName).get();
      coMentees = coMenteesSnapshot.docs.map((doc) => doc.data()).toList();

      setState(() {});
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Roll number not found')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentor Mentee Finder'),
        // backgroundColor: GlobalStyles.kPrimaryBlueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: GlobalStyles.kPrimaryBlueColor,
          child: Container(
            // decoration: GlobalStyles.blueShadowCardDeco,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _rollNoController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your Roll Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      fetchMenteeData(_rollNoController.text);
                    },
                    child: const Text('Find Mentor and Co-Mentees'),
                  ),
                ),
                const SizedBox(height: 16),
                mentorData != null ? MentorInfo(mentorData!) : Container(),
                const SizedBox(height: 16),
                coMentees.isNotEmpty ? CoMenteesList(coMentees) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MentorInfo extends StatelessWidget {
  final Map<String, dynamic> mentorData;

  const MentorInfo(this.mentorData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Mentor Information:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text('Name: ${mentorData['Name']}'),
        Text('Roll No: ${mentorData['Roll No']}'),
        Text('Email: ${mentorData['Email']}'),
        Text('Mobile: ${mentorData['Mobile']}'),
      ],
    );
  }
}

class CoMenteesList extends StatelessWidget {
  final List<Map<String, dynamic>> coMentees;

  const CoMenteesList(this.coMentees, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Co-Mentees:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...coMentees
            .map((mentee) =>
                Text('${mentee['Name']} (Roll No: ${mentee['Roll No']})'))
            .toList(),
      ],
    );
  }
}
