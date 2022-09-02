import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class FaqWidget extends StatefulWidget {
  FaqWidget({Key? key}) : super(key: key);

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  final _headerStyle = const TextStyle(
      color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 24, left: 24, right: 24, bottom: 4),
              child: const Text(
                'FAQ\'s in Flutter',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  )),
              child: Column(
                children: [
                  faqTile('What is Flutter?',
                      'Flutter SDK (Software Development Kit) is an innovative technology for creating applications on mobile, desktop, and web platforms. It’s a free, open-source UI framework from Google which has hit the market in 2017. '),
                  faqTile('Is a Flutter app performance as good as native app?',
                      'Yes, you can say so.If you don\’t need to use any system-specific features, or latest technology solutions in your app, you wouldn\’t see any difference in performance whether it\’s created with Flutter or natively. The difference is that with Flutter, you can get it done faster. '),
                  faqTile('Is Flutter a good choice for startups?',
                      'Absolutely! Startups owners knowing the advantages of Flutter choose for their mobile app development more and more often. It’s a great solution for those who want to release the app as fast as possible to test the idea and the product, if it has reached the target audience and if it can be used to make a profit. Flutter apps can be developed further anytime later. '),
                  faqTile('Is Flutter good for MVP development?',
                      'Yes. As mentioned above, companies often use Flutter for their mobile app development to test and validate the idea, which is what MVPs are all about. Flutter apps can be released faster than native apps, that’s why it’s a good choice for MVPs as well.  '),
                  faqTile('What are some popular Flutter apps?',
                      'Alibaba – one of the world’s leading B2B ecommerce marketplaces. The app allows you to source products from global suppliers, all from the convenience of your mobile device. \n \n Google Pay – a quick and easy way to pay online, in shops and other places. \n \n Google Ads – it’s an app that helps you supervise your campaigns using your smartphone from any place. \n \n Ad Stats for AdMob – an app to check your income in Google AdMob. \n \n Reflectly – a journal utilizing artificial intelligence to help you structure and reflect upon your daily thoughts and problems. \n \n eBay – an app for one of the most popular e-commerce platforms in the world \n \n iRobot – an app connected to your iRobot hoover to configure a map of your home, create cleaning schedules and much more. \n \n ABOUT YOU – e-commerce mobile app of a german online fashion shop. '),
                  faqTile('Want to learn Flutter ?',
                      '~  Do follow @AlfaWhocCodes \n ~ DM \'FLUTTER\' for mentorship'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget faqTile(String title, String description) {
    return Accordion(
      disableScrolling: true,
      initialOpeningSequenceDelay: 0,
      maxOpenSections: 2,
      headerBackgroundColorOpened: Colors.black54,
      scaleWhenAnimating: true,
      openAndCloseAnimation: true,
      paddingListTop: 0,
      paddingListBottom: 0,
      sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
      sectionClosingHapticFeedback: SectionHapticFeedback.light,
      children: [
        AccordionSection(
          contentBackgroundColor: Colors.white,
          contentBorderWidth: 0,
          contentBorderColor: Colors.white,
          headerBackgroundColor: Colors.white,
          isOpen: false,
          flipRightIconIfOpen: true,
          rightIcon: Row(
            children: [
              SizedBox(
                width: 4,
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.black45),
            ],
          ),
          header: Container(
              margin: EdgeInsets.only(top: 8, right: 4),
              child: Text(title, style: _headerStyle)),
          content: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
