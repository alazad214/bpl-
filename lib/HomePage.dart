import 'package:bpl/reUsible.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnack(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Exit(context){
    showDialog(context: context, builder: (_){
      return CupertinoAlertDialog(
        title: Text('আপনি কি অ্যাপ থেকে বের হতে চান?'),
        actions: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){SystemNavigator.pop();}, child: Text("হ্যাঁ")),
                SizedBox(width: 20),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("না"))
              ],
            ),
          )
        ],

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop:(){
       Exit(context);
       return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'বিপিএল সময়সুচি -২০২৪',
            style: TextStyle(
                color: Colors.black,
                fontSize:Width*0.05,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.teal,
          toolbarHeight: 70,
          titleSpacing: 0,
        ),
        drawer: Drawer(
          backgroundColor: Colors.teal.shade400,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.teal.shade600,
                  padding: EdgeInsets.fromLTRB(13, 2, 5, 0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asset/image/cricket.png',
                          height: Height*0.1,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "বিপিএল-এর সকল খবরাখবর পেতে আমাদের সাথেই থাকুন",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Height*0.02,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              _CustomListTile("Home", Icons.home, () {
                Navigator.pop(context);
              }),
              _CustomListTile("Rate Us", Icons.star, () {}),
              _CustomListTile("Share", Icons.share, () {}),
              _CustomListTile("Contact Us", Icons.email, () {}),
              Container(
                color: Colors.blueGrey,
                height: 1,
              ),
              _CustomListTile("Contact Us", Icons.facebook, () {}),
              _CustomListTile("More Apps", Icons.ad_units, () {}),
              _CustomListTile("Privacy Policy", Icons.privacy_tip, () {}),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomCard(
                        text: "দল & খেলোয়াড়",
                        ontap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (_) =>
                                    Screen_s(text: "দল & খেলোয়াড়", children: [
                                  _CustomExpantionTile(
                                      "কুমিল্লা ভিক্টোরিয়ানস",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "কুমিল্লা ভিক্টোরিয়ানস টিমের খেলোয়াড়গুলো হলো: মোস্তাফিজুর রহমান, ফাফ ডু প্লেসি, মঈন আলী, সুনীল নারাইন ,  লিটন দাস, শহিদুল ইসলাম, ইমরুল কায়েস, তানভীর ইসলাম, আরিফুল হক, নাহিদুল ইসলাম, মাহমুদুল হাসান, সুমন খান, মুমিনুল হক, মাহিদুল ইসলাম, পারভেজ হোসেন, আবু হায়দার , মেহেদী হাসান।,কুশল মেন্ডিস ,ওশান টমাস "),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "রংপুর রাইডার্স",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "সাকিব আল হাসান (অধিনায়ক), বাবর আজম, নূরুল হাসান সোহান, শেখ মেহেদী, হাসান মাহমুদ, ইহসানউল্লাহ, ওমরজাই, নিকুলাস পুরান, হাসরাঙ্গা, ব্রেনডন কিং, পাথিরানা।"),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "ফরচুন বরিশাল",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "তামিম ইকবাল খান (অধিনায়ক), ফখর জামান, ইব্রাহিম জাদরান, আব্বাস আফ্রিদি, মাহমুদউল্লাহ রিয়াদ, এনামুল হক বিজয়, মেহেদী হাসান মিরাজ, শয়েব মালিক, পল স্ট্রালিং, মোহাম্মদ আমির।"),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "সিলেট স্টাইকার্স",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "মাশরাফি বিন মর্তুজা (অধিনায়ক), রেজাউর রহমান রাজা।"),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "দুর্দান্ত ঢাকা",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "মুশফিকুর রহিম, সায়েম আইয়ুব, তাসকিন আহমেদ, মোসাদ্দেক হোসেন, শরিফুল ইসলাম।"),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "চট্টগ্রাম চ্যালেঞ্জার্স",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "নাজিবুল্লাহ জাদরান, মোহাম্মদ হারিস, শুভাগত হোম, জিয়াউর রহমান, নিহাদুজ্জামান।"),
                                  _Sizebox(),
                                  _CustomExpantionTile(
                                      "খুলনা টাইগার্স",
                                      "খেলোয়াড় সমুহের তালিকা....",
                                      "ড্রাফট শেষে পূর্ণাঙ্গ স্কোয়াড সম্পর্কে বিস্তারিত তথ্য দেওয়া হবে।"),
                                ]),
                              ));
                        }),
                    CustomCard(text: "ম্যাচসমুহ", ontap: () {}),
                  ],
                ),
                _Sizebox(),
                Row(
                  children: [
                    CustomCard(
                        text: "পয়েন্ট টেবিল",
                        ontap: () {
                          MySnack("bangladesh", context);
                        }),
                    CustomCard(
                        text: "স্টেডিয়াম",
                        ontap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) =>
                                      Screen_s(text: "স্টেডিয়াম", children: [
                                        _CustomExpantionTile(
                                            "শের-ই-বাংলা জাতীয় ক্রিকেট স্টেডিয়াম",
                                            "শের-ই-বাংলা জাতীয় ক....",
                                            " শের-ই-বাংলা জাতীয় ক্রিকেট স্টেডিয়াম ঢাকার মিরপুরে অবস্থিত। স্টেডিয়ামটি মিরপুরের ৬ নং সেক্টরে অবস্থিত। এটি বর্তমানে শুধুমাত্র ক্রিকেট মাঠ হিসেবে ব্যবহৃত হচ্ছে। ২৬,০০০ দর্শক ধারণক্ষমতার এই স্টেডিয়ামটি স্থাপিত হয় ২০০৬ সালে। এটি বাংলাদেশের অধিকাংশ প্রথম-শ্রেণীর ক্রিকেট, টেস্ট, একদিনের আন্তর্জাতিক, টুয়েন্টি২০ আন্তর্জাতিক এবং বাংলাদেশ জাতীয় মহিলা ক্রিকেট দলের নিজস্ব মাঠ। "
                                                "\n"
                                                "\n"
                                                "তাছাড়া বিপিএলের অধিকাংশ ম্যাচ এই স্টেডিয়াম-এ হয়ে থাকে।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "জহুর আহমেদ চৌধুরী স্টেডিয়াম",
                                            "জহুর আহমেদ চৌধুরী....",
                                            "জহুর আহমেদ চৌধুরী স্টেডিয়াম আইসিসি অনুমোদিত টেস্ট প্লেয়িং আন্তর্জাতিক ক্রিকেট মাঠসমূহের একটি। স্টেডিয়ামটি জানুয়ারি ২০০৬ এ পূর্ণ আন্তর্জাতিক মর্যাদা পায়। বাংলাদেশের দক্ষিণ-পূর্বাংশের বন্দর নগরী চট্টগ্রামের সাগরিকায় এটি অবস্থিত। "
                                                "\n"
                                                "\n"
                                                "তাছাড়া এই স্টেডিয়ামে চট্টগ্রাম পর্বের জন্য বেশকিছু BPL এর ম্যাচ রাখা হয়।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "সিলেট আন্তর্জাতিক ক্রিকেট স্টেডিয়াম ",
                                            "সিলেট আন্তর্জাতিক ক্রিকেট",
                                            "স্টেডিয়ামটি ২০০৭ সালে নির্মিত হয়।  ২০১৪ সালে টি-টুয়েন্টি বিশ্বকাপের মাঠ হিসেবে এই স্টেডিয়ামকেও নির্বাচন করে বিসিবি। তাছাড়া এই স্টেডিয়ামে সিলেট পর্বের জন্য বেশকিছু BPL এর ম্যাচ রাখা হয়।  ")
                                      ])));
                        }),
                  ],
                ),
                _Sizebox(),
                Row(
                  children: [
                    CustomCard(
                        text: "প্রাইজমানি",
                        ontap: () {
                          MySnack("bangladesh", context);
                        }),
                    CustomCard(
                        text: "পূর্বের বিজয়ী",
                        ontap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) =>
                                      Screen_s(text: "পূর্বের বিজয়ী", children: [
                                        _CustomExpantionTile(
                                            "১ম আসর-২০১২( ঢাকা গ্ল্যাডিয়েটরস)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১২ সালে বিপিএল এর প্রথম আসর শুরু হয়। সেই প্রথম আসরে ঢাকা গ্ল্যাডিয়েটরস এবং বরিশাল বার্নার্স ফাইনালে উঠে। ফাইনালে বরিশাল বার্নার্সকে ৮ উইকেট হারিয়ে ঢাকা গ্ল্যাডিয়েটরস বিপিএলের প্রথম আসরে প্রথম বারের মতো শিরোপা জিতে নেয়। "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "২য় আসর-২০১২-১৩ ( ঢাকা গ্ল্যাডিয়েটরস)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৩ সালে বিপিএলের দ্বিতীয় আসর শুরু হয়। সেই দ্বিতীয় আসরে ঢাকা গ্ল্যাডিয়েটরস ও চিটাগং কিংস ফাইনালে উঠে। ফাইনালে চিটাগং কিংসকে ৪৩ রানে হারিয়ে ঢাকা গ্ল্যাডিয়েটরস বিপিএলে দ্বিতীয় বারের মতো শিরোপা জিতে নেয়।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "তৃতীয় আসর-২০১৫-১৬(কুমিল্লা ভিক্টোরিয়ান্স)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৫ সালে বিপিএলের তৃতীয় আসর শুরু হয়। সেই তৃতীয় আসরে বরিশাল বুলস ও কুমিল্লা ভিক্টোরিয়াস ফাইনালে উঠে। ফাইনালে বরিশাল বুলসকে ৩ উইকেটে হারিয়ে কুমিল্লা ভিক্টোরিয়াস প্রথমবারের মতো বিপিএল চ্যাম্পিয়ন হয়। "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "চতুর্থ আসর-২০১৬-১৭(ঢাকা ডায়নামাইটস)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৬ সালে বিপিএলের চতুর্থ আসর শুরু হয়। সেই চতুর্থ আসরে ঢাকা ডায়নামাইটস ও রাজশাহী কিংস ফাইনালে উঠে। ফাইনালে রাজশাহী কিংসকে ৫৬ রানে হারিয়ে ঢাকা ডায়নামাইটস শিরোপা জিতে নেয়।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "পঞ্চম আসর-২০১৭-১৮(রংপুর রাইডার্স)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৭ সালে বিপিএলের পঞ্চম আসর শুরু হয়। সেই পঞ্চম আসরে রংপুর রাইডার্স ও ঢাকা ডায়নামাইটস ফাইনালে উঠে। ফাইনালে ঢাকা ডায়নামাইটসকে ৫৭ রানে হারিয়ে রংপুর রাইডার্স প্রথমবারের মতো বিপিএল শিরোপা জিতে নেয়। "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "৬ষ্ঠ আসর- ২০১৮-১৯( কুমিল্লা ভিক্টোরিয়ান্স)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৯ সালে বিপিএলের ৬ষ্ঠ আসর শুরু হয়। সেই ৬ষ্ঠ আসরে ঢাকা ডায়নামাইটস ও কুমিল্লা ফাইনালে উঠে। ফাইনালে ঢাকা ডাইনামাইটসকে ১৭ রানে হারিয়ে কুমিল্লা ভিক্টোরিয়ানস দ্বিতীয়বারের মতো বিপিএল শিরোপা জিতে নেয়। "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "৭ম আসর- ২০১৯-২০(রাজশাহী রয়্যালস)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০১৯-২০ সালে বিপিএলের সপ্তম আসর শুরু হয়। সেই ৭ম আসরে রাজশাহী রয়্যালস ও খুলনা টাইগার্স ফাইনালে উঠে। ফাইনালে খুলনা টাইগার্সকে ২১ রানে হারিয়ে রাজশাহী রয়্যালস বিপিএল শিরোপা জয় করে।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "৮ম আসর-২০২১-২২( কুমিল্লা ভিক্টোরিয়ান্স)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০২২ সালে বিপিএলের অষ্টম আসর শুরু হয়। সেই অষ্টম আসরে ফরচুন বরিশাল ও কুমিল্লা ভিক্টোরিয়াস ফাইনালে উঠে। ফাইনালে ফরচুন বরিশালকে ১ রানে হারিয়ে কুমিল্লা ভিক্টোরিয়ানস তৃতীয়বারের মতো বিপিএল শিরোপা জিতে নেয়।  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "৯ম আসর-২০২২-২৩( কুমিল্লা ভিক্টোরিয়ান্স)",
                                            "বিপিএল চ্যাম্পিয়ন...",
                                            "২০২৩ সালের জানুয়ারি মাসে বিপিএলের নবম আসর শুরু হয়। এই আসরে কুমিল্লা ভিক্টোরিয়ান্স এবং সিলেট স্ট্রাইকার্স ফাইনালে ওঠে। ফাইনালে বৃহস্পতিবার (১৬ ফেব্রুয়ারি) সিলেট স্ট্রাইকার্সকে ৭ উইকেটে কুমিল্লা ভিক্টোরিয়ান্স হারিয়েছে। ফলে টানা দ্বিতীয়বার বিপিএলের শিরোপা জিতল কুমিল্লা ভিক্টোরিয়ান্স। আর বিপিএল ইতিহাসে এটি কুমিল্লার চতুর্থ শিরোপা। "),
                                      ])));
                        }),
                  ],
                ),
                _Sizebox(),
                //others-->
                Text(
                  "অন্যান্য",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
                Divider(
                  height: 5,
                  color: Colors.black,
                ),
                _Sizebox(),
                Row(
                  children: [
                    CustomCard2(
                        text: " রেকর্ড সমুহ",
                        ontap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) =>
                                      Screen_s(text: "রেকর্ড", children: [
                                        _CustomExpantionTile(
                                            "দলীয় সর্বোচ্চ/ সর্বনিম্ন",
                                            "বিপিএলে সরেবাচ্চ দলীয়....",
                                            "বিপিএলে সরেবাচ্চ দলীয় রান করে রংপুর রাইডার্স, চর্টগ্রাম ভাইকিংস এর বিরুদ্ধে ২০১৯ সালে( ২৩৯/৪) "
                                                "\n"
                                                "\n"
                                                "বিপিএলে সর্বনিম্ন দলীয় রান করে খুলনা টাইটানস, রংপুর রাইডার্স এর বিরুদ্ধে ২০১৬ সালে(৪৪/১০)-১০.৪ ওভার"),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "মোট রান",
                                            "মোট রান....",
                                            "বিপিএলে সর্বোচ্চ মোট রান করে তামিম ইকবাল। তিনি ৮৮ ইনিংসে ২৯৩০ রান করে "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "ব্যাক্তিগত সর্বোচ্চ",
                                            "বিব্যাক্তিগত সর্বোচ্চ....",
                                            "বিপিএলে সরেবাচ্চ ব্যাক্তিগত রান করে ক্রিস গেইল ( ৬৯ বলে ১৪৬*) , এরপর তামিম ইকবাল (৬১ বলে ১৪১ রান)  "),
                                        _Sizebox(),
                                        _CustomExpantionTile(
                                            "দলীয় সর্বোচ্চ উইকেট",
                                            "বিপিএলে সরেবাচ্চ উইকেট....",
                                            "বিপিএলে সরেবাচ্চ উইকেট নেয়া প্লেয়ার হলো সাকিব আল হাসান( ১০০ ইনিংসে ১৩২ উইকেট) "),
                                      ])));
                        },
                        color: Colors.lightGreen)
                  ],
                ),
                _Sizebox(),
                Row(
                  children: [
                    CustomCard2(
                        text: "অন্যান্য",
                        ontap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) =>
                                      Screen_s(text: "টিম রেকর্ড", children: [
                                        _CustomExpantionTile(
                                            "সর্বাধিক (ম্যাচ, ক্যাপটেনসি, আম্পায়ার)  ",
                                            "বিপিএল ইতিহাসে সর্বাধিক... ",
                                            "বিপিএল ইতিহাসে সর্বাধিক ম্যাচ খেলেছেন মুসফিকুর রহিম(১১১ ম্যাচ) , এরপর এনামুল হক(১০৭)"
                                                "\n"
                                                "\n"
                                                "বিপিএল ইতিহাসে সর্বাধিক ম্যাচে ক্যাপটেনের দায়িত্ব পালন করেছেন মাশরাফি বিন মর্তুজা( ১০০ মা্যচ) "
                                                "\n"
                                                "\n"
                                                "বিপিএল ইতিহাসে সর্বাধিক আম্পায়ারের দায়িত্ব পালন করেছেন মাসুদুর রহমান(৭৯ ম্যাচ), এরপর আসে মাহফুজুর রহমান (৭৫ ম্যাচ))  ")
                                      ])));
                        },
                        color: Colors.lightGreen)
                  ],
                ),
                _Sizebox(),
                SizedBox(
                  child: Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 85,
                        child: Card(
                          color: Colors.teal,
                          elevation: 20,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Lottie.asset("asset/ani/anima2.json",),
                                SizedBox(width: 20),
                                Text("FQA", style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600
                                ),),
                                SizedBox(width: 20),
                                Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                        ),
                      )),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _CustomListTile(text, icon, ontap) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.black,
      size: 25,
    ),
    title: Text(
      text,
      style: TextStyle(fontSize: 15),
    ),
    onTap: ontap,
  );
}

Widget _CustomExpantionTile(title, text, description) {
  return ExpansionTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), side: BorderSide(width: 2)),
    backgroundColor: Colors.deepOrangeAccent,
    collapsedBackgroundColor: Colors.greenAccent,
    textColor: Colors.teal,
    collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), side: BorderSide(width: 2)),
    subtitle: Text(text),
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyan,
        ),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    ],
  );
}

Widget _Sizebox() {
  return SizedBox(
    height: 10,
  );
}
