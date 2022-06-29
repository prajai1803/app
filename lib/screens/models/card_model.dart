class MyData {
  String name = '';
  String image = '';

  MyData({
    required this.name,
    required this.image,
  });
}

List<MyData> datalist = [
  MyData(
      name: "Prakhar",
      image:
          "https://res.cloudinary.com/practicaldev/image/fetch/s--H3ErTaXk--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/531379/d6ac24ed-bc25-46d7-8a24-d2b3d60db4c9.png"),
  MyData(
      name: "Suraj",
      image: "https://avatars.githubusercontent.com/u/73026702?v=4"),
  MyData(
      name: "Deepak",
      image: "https://avatars.githubusercontent.com/u/91661583?v=4"),
];
