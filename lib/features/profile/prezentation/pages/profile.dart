import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hive/hive.dart';
import 'package:i_baza/assets/constants/icons.dart';
import 'package:i_baza/features/profile/prezentation/pages/home.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Gap(40),
            GestureDetector(
              child: Container(
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.profile),
                    const Gap(10),
                    const Text(
                      "Shavqiyev Shohrux",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    const Gap(25),
                    const Icon(
                      Icons.navigate_next,
                      size: 24,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileMainScreen()),
                );
              },
            ),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 101,
                  height: 94,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.heart),
                      const Text(
                        "Saqlanganlar",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFF383838),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 101,
                  height: 94,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.notification),
                      const Text(
                        "Xabarnomalar",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFF383838),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 101,
                  height: 94,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.settings),
                      const Text(
                        "Sozlamalar",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF383838),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(25),
            Container(
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.note,
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    width: 140,
                    child: Text(
                      "Yo'riqnoma",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Gap(100),
                  SvgPicture.asset(AppIcons.next),
                ],
              ),
            ),
            const Gap(25),
            Container(
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.subtract,
                      width: 25,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    width: 140,
                    child: Text(
                      "Ilova haqida",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Gap(100),
                  SvgPicture.asset(AppIcons.next),
                ],
              ),
            ),
            const Gap(25),
            Container(
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.info,
                      width: 25,
                    ),
                  ),
                  const Gap(10),
                   Container(
                     width: 140,
                     child: Text(
                      "Foydalanish qoidalari",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                                       ),
                   ),
                  const Gap(100),
                  SvgPicture.asset(AppIcons.next),
                ],
              ),
            ),
            const Gap(25),
            Container(
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.star,
                      width: 25,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    width: 140,
                    child: Text(
                      "Bonus balansi",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Gap(100),
                  SvgPicture.asset(AppIcons.next),
                ],
              ),
            ),
            const Gap(25),
            Container(
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.phone,
                      width: 25,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    width: 140,
                    child: Text(
                      "Yordam",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Gap(100),
                  SvgPicture.asset(AppIcons.next),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            label: "Asosiy",
            icon: SvgPicture.asset(AppIcons.home),
          ),
          BottomNavigationBarItem(
            label: "Katalog",
            icon: SvgPicture.asset(AppIcons.katalog),
          ),
          BottomNavigationBarItem(
            label: "Buyurtmalar",
            icon: SvgPicture.asset(AppIcons.zakaz),
          ),
          BottomNavigationBarItem(
            label: "Savatcha",
            icon: SvgPicture.asset(AppIcons.buy),
          ),
          BottomNavigationBarItem(
            label: "Profil",
            icon: SvgPicture.asset(AppIcons.profile_bottom),
          ),
        ],
      ),
    );
  }
}
