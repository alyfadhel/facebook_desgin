import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook_mobile/models/postmodel.dart';
import 'package:facebook_mobile/models/roommodel.dart';
import 'package:facebook_mobile/models/storymodel.dart';
import 'package:facebook_mobile/modules/home/cubit/cubit.dart';
import 'package:facebook_mobile/modules/home/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is !AppInitialState) {
            Future.delayed(Duration(seconds: 2), (){
            });
          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                'facebook',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 25,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat,
                      size: 25,
                    )),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home,
                              color: Colors.blue,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.blue,
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.group_work_outlined,
                              color: Colors.grey,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shop,
                              color: Colors.grey,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.wallet_travel_outlined,
                              color: Colors.grey,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.grey,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.view_headline,
                              color: Colors.grey,
                              size: 30,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        )
                      ],
                    )),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 10, top: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      'What\'s on your mind?',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey[200],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.live_tv_sharp,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Live')
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 1,
                                color: Colors.grey[300],
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.photo,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Photo')
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 1,
                                color: Colors.grey[300],
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.video_call_rounded,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Live')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 5,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            top: 20,
                          ),
                          child: Text(
                            'Audio and Video Rooms',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 60,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue[50],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Create Room',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Container(
                                    height: 60,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) =>
                                          buildRoom(cubit.rooms[index]),
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: cubit.rooms.length,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 200,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  buildStory(cubit.stories[index]),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 0,
                                  ),
                              itemCount: cubit.stories.length),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 10,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                buildPostItem(context, cubit.posts[index]),
                            separatorBuilder: (context, index) => Container(
                                  height: 10,
                                  width: double.infinity,
                                  color: Colors.grey[300],
                                ),
                            itemCount: cubit.posts.length)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildRoom(RoomModel model) => Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5),
        child: CircleAvatar(
          backgroundImage: NetworkImage(model.image!),
          radius: 17,
        ),
      );

  Widget buildStory(StoryModel model) => Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Container(
          width: 100,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(model.image!),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  model.text!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ),
      );

  Widget buildPostItem(context, PostModel model) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(model.profileImage!),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '${model.time.toString()}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.public,
                          size: 14,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz_outlined,
                  size: 20,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          if (model.text != null)
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Text(model.text!),
            ),
          SizedBox(
            height: 10,
          ),
          if (model.images != null)
            CarouselSlider(
              options: CarouselOptions(
                  height: 200,
                  initialPage: 0,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal),
              items: model.images!.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image(
                      image: NetworkImage(i),
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 200,
                    );
                  },
                );
              }).toList(),
            ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 9,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 12,
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  model.like.toString(),
                  style: Theme.of(context).textTheme.caption,
                ),
                Spacer(),
                Text(
                  '${model.comments.toString()} Comments',
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      )),
                  Expanded(
                      child: Text(
                    'Like',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.black,
                        size: 20,
                      )),
                  Expanded(
                      child: Text('Comment',
                          overflow: TextOverflow.ellipsis, maxLines: 1))
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                        size: 20,
                      )),
                  Expanded(
                      child: Text('Share',
                          overflow: TextOverflow.ellipsis, maxLines: 1))
                ],
              )),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      );
}
