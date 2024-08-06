import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swg_flutter/models/Notice.dart';
// import 'notice.dart'; // Assuming your Notice class is in this file

class AddNoticePage extends StatefulWidget {
  @override
  _AddNoticePageState createState() => _AddNoticePageState();
}

class _AddNoticePageState extends State<AddNoticePage> {
  final _formKey = GlobalKey<FormState>();
  String heading = '';
  String description = '';
  DateTime? eventTime;
  String location = '';
  String host = '';
  String? imageUrl;
  String targetAudience = 'All KGP Junta';
  bool published = false;
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;
  final List<String> targetAudiences = [
    'All KGP Junta',
    'Freshers',
    'Sophomores',
    'Pre-Final Years',
    'Final Years'
  ];

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = image;
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final newNotice = Notice(
        heading: heading,
        description: description,
        eventTime: eventTime ?? DateTime.now(),
        location: location,
        host: host,
        imageUrl: _imageFile?.path,
        targetAudience: targetAudience,
        published: published,
      );
      await Notice.createNotice(newNotice);
      Navigator.pop(context); // Go back after submitting
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Notice'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Heading'),
              onSaved: (value) => heading = value!,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a heading' : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              onSaved: (value) => description = value!,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a description' : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Location'),
              onSaved: (value) => location = value!,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a location' : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Host'),
              onSaved: (value) => host = value!,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter the host' : null,
            ),
            ListTile(
              title: Text("Event Date and Time"),
              subtitle: Text(eventTime?.toString() ?? 'No date chosen'),
              onTap: () async {
                final chosenDate = await showDatePicker(
                  context: context,
                  initialDate: eventTime ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (chosenDate != null) {
                  final chosenTime = await showTimePicker(
                      context: context,
                      initialTime:
                          TimeOfDay.fromDateTime(eventTime ?? DateTime.now()));
                  setState(() {
                    eventTime = DateTime(
                        chosenDate.year,
                        chosenDate.month,
                        chosenDate.day,
                        chosenTime?.hour ?? 0,
                        chosenTime?.minute ?? 0);
                  });
                }
              },
            ),
            DropdownButtonFormField(
              value: targetAudience,
              decoration: InputDecoration(labelText: 'Target Audience'),
              items: targetAudiences.map((String audience) {
                return DropdownMenuItem(
                  value: audience,
                  child: Text(audience),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  targetAudience = newValue!;
                });
              },
            ),
            ListTile(
              title: Text("Upload Image"),
              subtitle: Text(_imageFile?.path ?? 'No image selected'),
              onTap: _pickImage,
            ),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
