import 'package:flutter/material.dart';

class I3 extends StatefulWidget {
  const I3({super.key});

  @override
  State<I3> createState() => _I3State();
}

class _I3State extends State<I3> {
  String groupValueGenre = 'Male';
  SocialMedia groupValueSocialMedia = SocialMedia.instagram;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Text('Genre:'),
          Row(
            children: [
              Radio(
                value: 'Male',
                groupValue: groupValueGenre,
                onChanged: (value) {
                  groupValueGenre = value!;
                  setState(() {});
                },
              ),
              const Text('Male'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Female',
                groupValue: groupValueGenre,
                onChanged: (value) {
                  groupValueGenre = value!;
                  setState(() {});
                },
              ),
              const Text('Female'),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Social:'),
          RadioListTile(
            value: SocialMedia.instagram,
            groupValue: groupValueSocialMedia,
            onChanged: (value) {
              groupValueSocialMedia = value!;
              setState(() {});
            },
            title: Text(SocialMedia.instagram.name),
          ),
          RadioListTile(
            value: SocialMedia.facebook,
            groupValue: groupValueSocialMedia,
            onChanged: (value) {
              groupValueSocialMedia = value!;
              setState(() {});
            },
            title: Text(SocialMedia.facebook.name),
          ),
          RadioListTile(
            value: SocialMedia.whatsapp,
            groupValue: groupValueSocialMedia,
            onChanged: (value) {
              groupValueSocialMedia = value!;
              setState(() {});
            },
            title: Text(SocialMedia.whatsapp.name),
          ),
        ],
      ),
    );
  }
}

enum SocialMedia { instagram, facebook, whatsapp }
