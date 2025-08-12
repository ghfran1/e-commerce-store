class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: 'تلفون ذكى',
    subTitle: "له الكثير من المميزات",
    image: "lib/images/image_1.jpg",
    description:
        "هاتف ذكي بتصميم أنيق وشاشة عالية الدقة، يدعم أحدث التطبيقات ويتميز بكاميرا احترافية.",
  ),
  Product(
    id: 2,
    price: 59,
    title: "ساعة أنيقة",
    subTitle: "جودة عالية",
    image: "lib/images/image_2.jpg",
    description:
        "ساعة يد أنيقة بخامات فاخرة، مقاومة للماء وتناسب جميع الأذواق والمناسبات.",
  ),
  Product(
    id: 3,
    price: 89,
    title: "ساعة جلدية",
    subTitle: "من أفخم الأنواع",
    image: "lib/images/image_3.jpg",
    description:
        "ساعة فاخرة بسوار جلدي طبيعي، تصميم كلاسيكي يلائم العمل والمناسبات الخاصة.",
  ),
  Product(
    id: 4,
    price: 599,
    title: 'تلفون زكى',
    subTitle: "جودة عالية",
    image: "lib/images/image_4.jpg",
    description:
        "هاتف ذكي بمعالج سريع، شاشة كبيرة وبطارية تدوم طويلاً مع دعم الشحن السريع.",
  ),
  Product(
    id: 5,
    price: 89,
    title: "لاب توب",
    subTitle: "جودة عالية",
    image: "lib/images/image_5.jpg",
    description:
        "حاسوب محمول بإمكانيات قوية لتشغيل البرامج الثقيلة والألعاب، خفيف الوزن وسهل الحمل.",
  ),
  Product(
    id: 6,
    price: 65,
    title: "نظارات الواقع الافتراضي",
    subTitle: "جودة عالية",
    image: "lib/images/image_6.jpg",
    description:
        "نظارات واقع افتراضي تمنحك تجربة غامرة للألعاب والفيديوهات، خفيفة ومريحة للاستخدام.",
  ),
];
