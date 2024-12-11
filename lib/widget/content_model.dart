class UnboardingContent{
  String image;
  String tittle;
  String description;
  UnboardingContent({
    required this.description,
    required this.image,
    required this.tittle

  });

}
List<UnboardingContent> contents=[
  UnboardingContent(description: 'Pick your food from our menu\n        More than 35 times', image: "images/screen1.png", tittle: 'Select from Our\n     Best Menu'),
  UnboardingContent(description: 'You can pay cash on delivery and\n    Card payment is available', image: 'images/screen2.png', tittle: 'Easy and online payment'),
  UnboardingContent(description: 'Delivery your food at your\n              Doorstep', image: 'images/screen3.png', tittle: 'Quick Delivery at your Doorstep')
];