class Owner {
  String login;
  int id;
  String node_id;
  String avatar_url;
  String gravatar_id;
  String url;
  String html_url;

  Owner(
      {required this.login,
      required this.id,
      required this.node_id,
      required this.avatar_url,
      required this.gravatar_id,
      required this.url,
      required this.html_url});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      login: json['login'],
      id: json['id'],
      node_id: json['node_id'],
      avatar_url: json['avatar_url'],
      gravatar_id: json['gravatar_id'],
      url: json['url'],
      html_url: json['html_url'],
    );
  }
}
