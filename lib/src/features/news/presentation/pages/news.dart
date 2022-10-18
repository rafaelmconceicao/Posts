import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:posts/src/features/news/presentation/components/cached_image_news.dart';
import 'package:posts/src/features/news/presentation/controllers/news_controller.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';
import 'package:posts/src/utils/ui/components/clip_path_class.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends BaseState<NewsPage, NewsController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: ThemeApp.primary,
            ),
          ),
          const SizedBox(height: 20,),
          Observer(
            builder: (context) {
              return controller!.progress == true ? const Center(child: CircularProgressIndicator()) :
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    var item = controller!.newsList[index];
                    return index.isEven
                        ? Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        item.user!.name!,
                                        style: BotTextStyles.titleNews,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(item.message!.content!),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: CachedImageNews(
                                  image: item,
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                  child: CachedImageNews(
                                image: item,
                              )),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        item.user!.name!,
                                        style: BotTextStyles.titleNews,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(item.message!.content!),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                  },
                  separatorBuilder: (context, i) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: controller!.newsList.length,
                ),
              );
            }
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
