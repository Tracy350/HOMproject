import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Help Center',
            style: GoogleFonts.montserrat(fontSize: 20),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'FAQ'),
              Tab(text: 'Contact Us'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.filter),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Search ',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  HelpCenterCard(
                    helptitle: 'Help Topic 1',
                    helpsubtext:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                ContactUs(
                  icon: Icon(Icons.headphones, size: 30),
                  contacttext: 'Customer Service',
                ),
                SizedBox(
                  height: 20,
                ),
                ContactUs(
                  icon: Icon(Icons.language, size: 30),
                  contacttext: 'Website',
                ),
                SizedBox(
                  height: 20,
                ),
                ContactUs(
                  icon: Icon(Icons.camera, size: 30),
                  contacttext: 'Instagram',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HelpCenterCard extends StatefulWidget {
  final String helptitle;
  final String helpsubtext;

  const HelpCenterCard({
    Key? key,
    required this.helptitle,
    required this.helpsubtext,
  }) : super(key: key);

  @override
  _HelpCenterCardState createState() => _HelpCenterCardState();
}

class _HelpCenterCardState extends State<HelpCenterCard> {
  bool isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.primary200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10, left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.helptitle,
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onPressed: _toggleExpanded,
                ),
              ],
            ),
          ),
          if (isExpanded) Divider(),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
              child: Text(
                widget.helpsubtext,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  final Icon icon;
  final String contacttext;

  ContactUs({super.key, required this.icon, required this.contacttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.primary200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, bottom: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              SizedBox(width: 20),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                contacttext,
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
