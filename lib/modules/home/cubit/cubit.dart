import 'package:bloc/bloc.dart';
import 'package:facebook_mobile/models/chatmodel.dart';
import 'package:facebook_mobile/models/postmodel.dart';
import 'package:facebook_mobile/models/rightsidemodel.dart';
import 'package:facebook_mobile/models/roommodel.dart';
import 'package:facebook_mobile/models/storymodel.dart';
import 'package:facebook_mobile/modules/home/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit <AppStates>{
  AppCubit():super(AppInitialState()) ;
  static AppCubit get(context)=>BlocProvider.of(context) ;
  List <StoryModel> stories=[
    StoryModel(image: 'https://image.freepik.com/free-vector/happy-birthday-design-background_52683-70357.jpg',text: 'Add to Story'),
    StoryModel(image: 'https://image.freepik.com/free-vector/hand-drawn-halloween-pumpkin-illustration_23-2149063400.jpg',text: 'Mohamed Ahmed'),
    StoryModel(image: 'https://image.freepik.com/free-vector/hand-drawn-halloween-ghost-illustration_23-2149063395.jpg',text: 'Ahmed Khaled Ellaban'),
    StoryModel(image: 'https://image.freepik.com/free-psd/stationery-dark-copper-mockup_23-2149052439.jpg',text: 'Youssef Salah'),
    StoryModel(image: 'https://image.freepik.com/free-photo/man-filming-with-professional-camera_23-2149066324.jpg',text: 'Ali Fadel'),
    StoryModel(image: 'https://image.freepik.com/free-photo/man-filming-with-professional-camera_23-2149066352.jpg',text: 'Add to Story'),
    StoryModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU',text: 'Ashraf Osama'),
    StoryModel(image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',text: 'Moataz Mahmoud'),
    StoryModel(image: 'https://letsenhance.io/static/334225cab5be263aad8e3894809594ce/75c5a/MainAfter.jpg',text: 'Nora Osama'),
    StoryModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwtgJH1LYxi0WQ-JL8GIIt_4UvJDMAUFN44Q&usqp=CAU',text: 'Hamed Akram'),
  ];
  List<PostModel>posts=[
    PostModel(name: 'Amal Mohsen',time: 5,text: 'The APIC Text is the most comprehensive and up-to-date reference for infection prevention and control (IPC). Written, edited, and reviewed by more than 200 subject matter experts, it reflects the latest guidelines, regulations, and standards of practice.The APIC Text\’s 11 sections and 125 peer-reviewed chapters are broad ranging, covering everything from fundamental principles, microbiology, epidemiology, and surveillance to more specialized topics, including specialty care populations, special pathogens, occupational health, and supportive care.',comments: 5,like: 50,profileImage: 'http://c.files.bbci.co.uk/C870/production/_112921315_gettyimages-876284806.jpg',images: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU']),
    PostModel(name: 'Mostafa Hosney',time: 15,text: 'IPC programs have evolved significantly over the past 50 years, and they are affected by professional and nonprofit organizations; government, regulatory, and accrediting agencies; and scientific research and publications. It’s imperative that infection preventionists have access to the best information available to reduce risk. The APIC Text is your reliable source, designed to be a one-stop shop for effective IPC at your facility.',comments: 25,like: 100,profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuEHrfimWzHnSVc2NXN5uFvpMqHGuheiskIA&usqp=CAU',images: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkjmUyRahAl-j_OOJFpM8jl2wbyQ0z7SI_0w&usqp=CAU']),
    PostModel(name: 'Mohammed Salah' ,profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU',like: 170,comments: 730,time: 7,text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.'),
    PostModel(name: 'Noah Hassan' ,profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',like: 1100,comments: 500,time: 10,text:'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
    PostModel(text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',time: 6,comments: 120,like: 300,profileImage: 'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg',name: 'Ahmed Khaled',images: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMdiDqhIfbW4d9p10OCWoMMjx2s8TbRat3ZQ&usqp=CAU','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_YRYPnxMLu1YGRBpucR826XZC_1JQ5NhfLr3dzQU_CZI8tq2MlEF7mAZ6VlJHCzaFI3k&usqp=CAU','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjYFV-bwRLTx5vbXeIRyRZDH86KNG-4ktGcg&usqp=CAU'])
  ];

  List<RoomModel>rooms=
      [
        RoomModel(image: 'https://cdn.eso.org/images/large/eso1322a.jpg') ,
        RoomModel(image: 'https://images.ctfassets.net/hrltx12pl8hq/66lRNN2kfHcVSUMrmrcKxf/76b78071032586ff9766d8eb51592f21/free-nature-images.jpg?fit=fill&w=840&h=350') ,
        RoomModel(image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGm2XqoSAwG_V3s5az1URNjUsYilzb0mHYjQ&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgswCFmbTpJmErjtFi_oOL8Q87v4W3jUQEDw&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMdiDqhIfbW4d9p10OCWoMMjx2s8TbRat3ZQ&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwtgJH1LYxi0WQ-JL8GIIt_4UvJDMAUFN44Q&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbK67Shys78nrqeFFaTz2nLl1erPl7TqfopJVISIyK1HaKNb3X3w33TC6Wit3G5BQut4&usqp=CAU') ,
        RoomModel(image: 'https://1.bp.blogspot.com/-_7S_AShvdhg/XsI0RHYhzHI/AAAAAAAADC4/cM-7maRDbQ0DV1n-sdcDkhX35KQ5XhRHACLcBGAsYHQ/s1600/IMG_20200518_110757-min.webp') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz233wCa6YyXkhXlvVdymPHSnArEouMgvbwQ&usqp=CAU') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHgyOGmBeOeod2L-i2uKIa8niQuJzSudZ13g&usqp=CAU') ,
        RoomModel(image: 'https://letsenhance.io/static/334225cab5be263aad8e3894809594ce/75c5a/MainAfter.jpg') ,
        RoomModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdY7ZnfmmnbxVs6ybjliqGVXZImGk-r1p7zg&usqp=CAU') ,
        RoomModel(image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg') ,
      ];

  List <ChatModel>chats =
      [
        ChatModel(name: 'Aly Fadhel',image: 'https://cdn.eso.org/images/large/eso1322a.jpg') ,
        ChatModel(name: 'Qusay Fadhel',image: 'https://images.ctfassets.net/hrltx12pl8hq/66lRNN2kfHcVSUMrmrcKxf/76b78071032586ff9766d8eb51592f21/free-nature-images.jpg?fit=fill&w=840&h=350') ,
        ChatModel(name: 'Mai Fadhel',image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg') ,
        ChatModel(name: 'Mohammed Osama',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGm2XqoSAwG_V3s5az1URNjUsYilzb0mHYjQ&usqp=CAU') ,
        ChatModel(name: 'Mohammed Ibrahim',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgswCFmbTpJmErjtFi_oOL8Q87v4W3jUQEDw&usqp=CAU') ,
        ChatModel(name: 'Osama Samir',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMdiDqhIfbW4d9p10OCWoMMjx2s8TbRat3ZQ&usqp=CAU') ,
        ChatModel(name: 'Abdullah Samir',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwtgJH1LYxi0WQ-JL8GIIt_4UvJDMAUFN44Q&usqp=CAU') ,
        ChatModel(name: 'Ahmed Ashraf',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU') ,
        ChatModel(name: 'Nour elden',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbK67Shys78nrqeFFaTz2nLl1erPl7TqfopJVISIyK1HaKNb3X3w33TC6Wit3G5BQut4&usqp=CAU') ,
        ChatModel(name: 'Osama Ashraf',image: 'https://1.bp.blogspot.com/-_7S_AShvdhg/XsI0RHYhzHI/AAAAAAAADC4/cM-7maRDbQ0DV1n-sdcDkhX35KQ5XhRHACLcBGAsYHQ/s1600/IMG_20200518_110757-min.webp') ,
        ChatModel(name: 'Sireen Nour',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz233wCa6YyXkhXlvVdymPHSnArEouMgvbwQ&usqp=CAU') ,
        ChatModel(name: 'Hitham Ramadan',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHgyOGmBeOeod2L-i2uKIa8niQuJzSudZ13g&usqp=CAU') ,
        ChatModel(name: 'Mohammed ElFakharney',image: 'https://letsenhance.io/static/334225cab5be263aad8e3894809594ce/75c5a/MainAfter.jpg') ,
        ChatModel(name: 'Hamed Mohammed',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdY7ZnfmmnbxVs6ybjliqGVXZImGk-r1p7zg&usqp=CAU') ,
        ChatModel(name: 'Heba Mahmoud',image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg') ,
        ChatModel(name: 'Ahmed Kamal',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGm2XqoSAwG_V3s5az1URNjUsYilzb0mHYjQ&usqp=CAU') ,
        ChatModel(name: 'Mostafa Abd ElRahman',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgswCFmbTpJmErjtFi_oOL8Q87v4W3jUQEDw&usqp=CAU') ,
        ChatModel(name: 'Youssef Mansour',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMdiDqhIfbW4d9p10OCWoMMjx2s8TbRat3ZQ&usqp=CAU') ,
        ChatModel(name: 'Ahmed Salah',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwtgJH1LYxi0WQ-JL8GIIt_4UvJDMAUFN44Q&usqp=CAU') ,
        ChatModel(name: 'Mahmoud Mohammed',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU') ,
        ChatModel(name: 'Adnan Mohammed',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbK67Shys78nrqeFFaTz2nLl1erPl7TqfopJVISIyK1HaKNb3X3w33TC6Wit3G5BQut4&usqp=CAU') ,
        ChatModel(name: 'Alaa Elden',image: 'https://1.bp.blogspot.com/-_7S_AShvdhg/XsI0RHYhzHI/AAAAAAAADC4/cM-7maRDbQ0DV1n-sdcDkhX35KQ5XhRHACLcBGAsYHQ/s1600/IMG_20200518_110757-min.webp') ,
        ChatModel(name: 'Amir Diab',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz233wCa6YyXkhXlvVdymPHSnArEouMgvbwQ&usqp=CAU') ,
        ChatModel(name: 'Ashraf Ramadan',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHgyOGmBeOeod2L-i2uKIa8niQuJzSudZ13g&usqp=CAU') ,
      ] ;

  List<RightSideModel>rights = [
    RightSideModel(image:'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80' ,text: 'Aly Fadhel'),
    RightSideModel(image:'https://st2.depositphotos.com/1277743/5804/v/950/depositphotos_58044913-stock-illustration-friends-icon-design.jpg' ,text: 'Friends'),
    RightSideModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1hg0hiau2dc_dgKdkyiLZ8A9Us3VYYoVoug&usqp=CAU' ,text: 'Jobs'),
    RightSideModel(image:'https://thumbs.dreamstime.com/b/linear-group-icon-customer-service-outline-collection-thin-line-vector-isolated-white-background-138644548.jpg' ,text: 'الشله'),
    RightSideModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMAWM74v3pyHzRKzk0P-ZqenMFdqBu1DzVqt8XE5ir-0aRKN75Fu2Ykecpc6LR-UPagT0&usqp=CAU' ,text: 'Marketplace'),
    RightSideModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRR4DM_ratuCIYqS70Z3teqhJqZwwafPRCfTVBeMsDdjgeghE9lu_vwPWiqxUqiOd50_k&usqp=CAU' ,text: 'See more'),
    RightSideModel(image: 'https://images.squarespace-cdn.com/content/v1/5c5059e9c258b4e5819141a9/1548787383465-4EMFCU50JV9BHHMV2R16/Graduation+Photography?format=1000w',text: 'WorldWide'),
    RightSideModel(image: 'https://scontent.fcai2-1.fna.fbcdn.net/v/t1.6435-9/123524868_2901527980075137_6549280477821392304_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_ohc=PExyySgnNUwAX_p--97&tn=_HsblSH2PKzMrJRV&_nc_ht=scontent.fcai2-1.fna&oh=ab5f600b1e1edfdf8103cbccb840c89b&oe=61655F10',text: 'Saturday Night بالعربي'),
    RightSideModel(image: 'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj',text: 'Flutter Jobs in Egypt'),
    RightSideModel(image: 'https://pbs.twimg.com/profile_images/1344684074250735618/RwE_omzt_400x400.jpg',text: 'SNL'),
    RightSideModel(image: 'http://cdn.shopify.com/s/files/1/1061/1924/products/OMG_Face_Emoji_grande.png?v=1571606037',text: 'Streets'),
    RightSideModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRR4DM_ratuCIYqS70Z3teqhJqZwwafPRCfTVBeMsDdjgeghE9lu_vwPWiqxUqiOd50_k&usqp=CAU' ,text: 'See more'),

  ] ;
}