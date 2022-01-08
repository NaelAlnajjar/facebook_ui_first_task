import 'package:first_task_facebook_ui/models/details_model.dart';
import 'package:first_task_facebook_ui/models/post_model.dart';

import '../models/story_model.dart';

List<StoryModel> storyComponents = [
  StoryModel(
    userName: 'Add Your Story',
    userImageUrl:
        'https://th.bing.com/th/id/OIP.s9DL3piJ-H0TRMdhP66rBQHaHa?w=179&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.bmsxZ5u-J3ArOjE6-YzF4AHaE8?w=219&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  StoryModel(
    userName: 'Anita Michalis',
    userImageUrl:
        'https://th.bing.com/th/id/OIP.OTnv_ly0SoV22jAPsLlK8gHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.mlb55X_dNR6KUpYZdoDCpgHaHa?w=157&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  StoryModel(
    userName: 'Jordan Praise',
    userImageUrl:
        'https://th.bing.com/th/id/R.359361c2b2d7eea689850ea12da51c57?rik=VYl9yxe8Fj7%2fGQ&riu=http%3a%2f%2facidcow.com%2fpics%2f20140423%2fpopular_people_instagram_20.jpg&ehk=n3FnjO8xj2eMysDD6nBNIY50GTCoKWhKyLaXv3cq%2bIg%3d&risl=&pid=ImgRaw&r=0',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.HvQvoUyu5tSpTxBXspq6HAHaHa?pid=ImgDet&w=221&h=221&c=7&dpr=1.25',
  ),
  StoryModel(
    userName: 'Nael Alnajjar',
    userImageUrl:
        'https://th.bing.com/th/id/OIP.4E3HqhNn_xpYfXB9PqiuzAHaH7?w=192&h=191&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.N0xlUC03y70zeCk5fu0lcAHaI5?w=123&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  StoryModel(
    userName: 'Ahmad Hamed',
    userImageUrl:
        'https://th.bing.com/th/id/OIP.cHwP2Fnsav-84gtpfvSjgwHaHa?w=206&h=191&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.cHwP2Fnsav-84gtpfvSjgwHaHa?pid=ImgDet&rs=1',
  ),
  StoryModel(
    userName: 'Nader AboJama',
    userImageUrl:
        'https://th.bing.com/th/id/OIP._ueMDAQQTez2COK667AFVgHaJP?w=169&h=191&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.xKWX8V5hFHRR9MZiODqdrQHaHM?w=175&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  StoryModel(
    userName: 'crista final',
    userImageUrl:
        'https://th.bing.com/th/id/OIP.MJocJKpWIuwP_ImTO_KzDAHaJQ?w=153&h=191&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    storyImageUrl:
        'https://th.bing.com/th/id/OIP.MUlafcQ7klqXyKC00Ei-8AHaJQ?w=167&h=209&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
];

List<PostModel> postComponents = [
  PostModel(
    postCreator: storyComponents[1],
    timeAgo: '3 mins ago',
    numComment: '122',
    numLike: '400',
    postType:" updated his cover photo",
    postImage:
        'https://th.bing.com/th/id/OIP.OE-8F4A3E5Kxz8tc66V59gHaFi?w=280&h=209&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  PostModel(
    postCreator: storyComponents[2],
    timeAgo: '2 hours ago',
    numComment: '60',
    numLike: '100',
    postType: 'had a Photoshoot session',
    postImage:
        'https://th.bing.com/th/id/OIP.U1fSbLI3PSeaVo1SJ5BsJAHaEK?w=260&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
];

List<DetailsModel> postDetails = [
  DetailsModel(
    storyCreator: storyComponents[1],
    postCreator: postComponents[1],
    imageUrl1: 'https://th.bing.com/th/id/OIP.U1fSbLI3PSeaVo1SJ5BsJAHaEK?w=260&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    imageUrl2: 'https://th.bing.com/th/id/OIP.OE-8F4A3E5Kxz8tc66V59gHaFi?w=280&h=209&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    imageUrl3: 'https://th.bing.com/th/id/OIP.sSTvL8S7_4SP8h6D97wdAQEsCW?w=284&h=175&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    imageUrl4: 'https://th.bing.com/th/id/OIP.HLCwlRUVT97rM19dQNABgQHaDd?w=284&h=163&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    imageUrl5: 'https://th.bing.com/th/id/OIP.7mhJxRqd6l_FUNwG_7xc3wHaD4?w=343&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
];
