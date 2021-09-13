import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook_mobile/models/chatmodel.dart';
import 'package:facebook_mobile/models/postmodel.dart';
import 'package:facebook_mobile/models/rightsidemodel.dart';
import 'package:facebook_mobile/models/roommodel.dart';
import 'package:facebook_mobile/models/storymodel.dart';
import 'package:facebook_mobile/modules/home/cubit/cubit.dart';
import 'package:facebook_mobile/modules/home/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacebookWeb extends StatelessWidget {
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
            backgroundColor: Colors.grey[200],
            body: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: Icon(
                                          Icons.notifications,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: Icon(
                                          Icons.messenger_outline,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: Icon(
                                          Icons.apps_sharp,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                          'Ahmed Khaled',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                        Expanded(
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.dashboard,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.supervised_user_circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.video_settings_rounded,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              'Search Facebook',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            )),
                                            Icon(
                                              Icons.search,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 50,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Contacts',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(child: Icon(Icons.more)),
                                        Expanded(child: Icon(Icons.search)),
                                        Expanded(
                                            child: Icon(
                                                Icons.video_settings_rounded))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: ListView.separated(
                                    itemBuilder: (context, index) =>
                                        buildChatItem(cubit.chats[index]),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          height: 5,
                                        ),
                                    itemCount: cubit.chats.length),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: SingleChildScrollView(
                              child: Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      child: ListView.builder(
                                        itemBuilder: (context, index) =>
                                            buildStory(cubit.stories[index]),
                                        itemCount: cubit.stories.length,
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Card(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg45jUi84SYeCf4uNAaprS7aoKzS8AohaLwQ&usqp=CAU'),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[200],
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                25),
                                                        ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20,
                                                              right: 20,
                                                              top: 10,
                                                              bottom: 10),
                                                      child: Text(
                                                        'What\'s on your mind?',
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 1,
                                            width: double.infinity,
                                            color: Colors.grey[200],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .video_call_rounded,
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
                                          SizedBox(height: 20,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,) ,
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20.0),
                                        child: Container(
                                          height: 60,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
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
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    height: 60,
                                                    child: ListView.separated(
                                                      separatorBuilder: (context,index)=>SizedBox(width: 5,),
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
                                      ),
                                    ),
                                    SizedBox(height: 5,) ,
                                    ListView.separated(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) =>
                                            buildPostItem(context, cubit.posts[index]),
                                        separatorBuilder: (context, index) => SizedBox(height: 5,),
                                        itemCount: cubit.posts.length)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [

                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child: buildRightSide(cubit.rights[0])),
                                    Expanded(child: buildRightSide(cubit.rights[1])),
                                    Expanded(child: buildRightSide(cubit.rights[2])),
                                    Expanded(child: buildRightSide(cubit.rights[3])),
                                    Expanded(child: buildRightSide(cubit.rights[4])),
                                    Expanded(child: buildRightSide(cubit.rights[5])),
                                  ],
                                ),
                              ) ,
                              SizedBox(height: 10,) ,
                              Container(
                                height: 1,
                                color: Colors.grey[300],
                                width: double.infinity,
                              ),
                              SizedBox(height: 10,),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: buildRightSide(cubit.rights[6])),
                                  Expanded(child: buildRightSide(cubit.rights[7])),
                                  Expanded(child: buildRightSide(cubit.rights[8])),
                                  Expanded(child: buildRightSide(cubit.rights[9])),
                                  Expanded(child: buildRightSide(cubit.rights[10])),
                                  Expanded(child: buildRightSide(cubit.rights[11])),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                  ))
                                ],
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildChatItem(ChatModel model) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: CircleAvatar(
              backgroundImage: NetworkImage(model.image!),
            ),
          ),
          Expanded(
              flex: 2,
              child: Text(
                model.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
              ))
        ],
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
  Widget buildRoom(RoomModel model) => CircleAvatar(
    backgroundImage: NetworkImage(model.image!),
    radius: 17,
  );
  Widget buildPostItem(context, PostModel model) => Card(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
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
          SizedBox(height: 10,) ,
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
      ),
    ),
  );
  Widget buildRightSide(RightSideModel model)=>Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
        child: CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(model.image!,),
        ),
      ),
      Expanded(
          flex: 2,
          child: Text(
            model.text!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ))
    ],
  );
}
