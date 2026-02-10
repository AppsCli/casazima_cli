class User {
  final String id;
  final String username;
  final String? avatar;

  User({
    required this.id,
    required this.username,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id']?.toString() ?? '',
      username: json['username'] as String? ?? '',
      avatar: json['avatar'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'avatar': avatar,
    };
  }
}

class LoginResponse {
  final User user;
  final String accessToken;
  final String refreshToken;
  final String expiresAt;

  LoginResponse({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    final token = data['token'] as Map<String, dynamic>;
    final user = data['user'] as Map<String, dynamic>;

    return LoginResponse(
      user: User.fromJson(user),
      accessToken: token['access_token'] as String,
      refreshToken: token['refresh_token'] as String,
      expiresAt: token['expires_at'] as String,
    );
  }
}
