class Member {
  String name;
  String avatar;
  String dob;
  int phone;
  String email;
  String gender;
  List<Post> posts = [];

  Member({
    required this.name,
    required this.avatar,
    required this.dob,
    required this.phone,
    required this.email,
    required this.gender,
  });

  void createPost(Post post) {
    posts.add(post);
  }
}

class Post {
  String content;
  Member member;
  List<String> images = [];
  List<Comment> comments = [];

  Post({required this.content, required this.member});

  void addComment(Comment comment) {
    comments.add(comment);
  }
}

class Comment {
  String content;
  Member member;

  Comment({required this.content, required this.member});
}

void main() {
  Member member = Member(
    name: 'member',
    avatar: 'avatar.jpeg',
    dob: '1111/01/01',
    phone: 0123456789,
    email: 'test@gmail.com',
    gender: 'male',
  );
  Member member1 = Member(
    name: 'member1',
    avatar: 'avatar.jpeg',
    dob: '1111/01/01',
    phone: 0123456789,
    email: 'test@gmail.com',
    gender: 'male',
  );
  Member member2 = Member(
    name: 'member2',
    avatar: 'avatar.jpeg',
    dob: '1111/01/01',
    phone: 0123456789,
    email: 'test@gmail.com',
    gender: 'male',
  );

  Post post = Post(content: 'Đây là bài đăng đầu tiên của tôi', member: member);
  Comment comment = Comment(content: 'ohhhhh, hay đấy', member: member);
  Comment comment2 = Comment(content: 'cx tạm', member: member1);
  Comment comment3 = Comment(content: 'thường thoi', member: member2);

  member.createPost(post);
  post.addComment(comment);
  post.addComment(comment2);
  post.addComment(comment3);

  // xem bai dang cua chinh minh
  // for (var post in member.posts) {
  //   print('Content: ${post.content}');
  // }
  // // xem lại những member đã comment bài viết này va nội dung cmt của member đó
  // List<Post> mb = member.posts;
  // for (var comment in member.posts[0].comments) {
  //   print('${comment.member.name}: ${comment.content}');
  // }
}
