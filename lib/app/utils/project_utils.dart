class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String? links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'FLIT Learning App',
    description:
        'This is a just Fully functional Learning App by using flutter,',
    links: null,
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Apply UK',
    description:
        'This is a Company ERP Web App by using flutter,',
    links: "https://leadz-uk-admin.web.app/",
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Restaurant App',
    description:
        'This is a fully details of Restaurant in a City like Restaurant App by using flutter, source code is also available, check below.',
    links: 'https://github.com/Jimshad008/Resturant_App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Google Drive Video Player App',
    description:
        'This is a just Video Player App where videos from Google Drive by using flutter, source code is also available, check below.',
    links: 'https://github.com/Jimshad008/lilac_task_App',
  ),
];
