import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/app_bar.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/list_channel.dart';
import 'package:whatsapp_app/core/style/list_store.dart';
import 'package:whatsapp_app/core/style/string_app.dart';
import 'package:whatsapp_app/core/style/text_style.dart';
import 'package:whatsapp_app/features/stores/views/widgets/custom_listTitlestore.dart';
import 'package:whatsapp_app/features/stores/views/widgets/custom_scroll_srore.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorsApp.colorblack,
        appBar: customAppbar(title: StringApp.storeString),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('الحالة', style: style2owhite()),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ListStore.length,
                        itemBuilder: (context, index) {
                          return CustomScrollStores(storeModel: ListStore[index]);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'القنوات',
                          style: style16white(),
                        ),
                        const Spacer(),
                        Text(
                          'استكشفات',
                          style: style16white().copyWith(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fork_left,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CustomListtitlestore(modell: ListChannel[index]);
                },
                childCount: ListChannel.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: ColorsApp.colorWhite,
          selectedItemColor: Colors.green,
          backgroundColor: ColorsApp.colorblack,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'الدردشات',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), label: 'المجتمعات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.update), label: 'المستجدات'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: 'المكالمات',
            ),
          ],
        ),
      ),
    );
  }
}

