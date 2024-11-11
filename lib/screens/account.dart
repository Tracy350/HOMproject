import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/about.dart';
import 'package:hom_project/screens/help_center.dart';
import 'package:hom_project/screens/notification.dart';
import 'package:hom_project/screens/personalinfo.dart';
import 'package:hom_project/screens/security.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/logout_modal.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/homelogo.png', height: 40),
            const SizedBox(width: 20),
            Text(
              'Account',
              style: GoogleFonts.montserrat(fontSize: 25),
            ),
            const Spacer(),
            const Icon(
              Icons.more_horiz_rounded,
              size: 30,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Emmanuel Agyeman',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'emmanuelagyman@gmail.com',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, color: Colors.grey[600]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Personalinfo()));
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(Icons.person,
                          color: AppColors.primary400, size: 30)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Personal info',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: AppColors.primary400,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Notification',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Security()));
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(
                        Icons.security,
                        color: AppColors.primary400,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Security',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(color: Colors.grey),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpCenter()));
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(
                        Icons.help_center,
                        color: AppColors.primary400,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Help Center',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(
                        Icons.info,
                        color: AppColors.primary400,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'About Hour Of Meditation',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  builder: (context) {
                    return BottomModal();
                  },
                );
              },
              child: Row(
                children: [
                  Container(
                      width: 60, // Outer container size (adjust as needed)
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors
                            .primary200, // Background color of the outer circle
                      ),
                      child: Icon(
                        Icons.logout,
                        color: AppColors.primary400,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LogOut',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: AppColors.primary400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
