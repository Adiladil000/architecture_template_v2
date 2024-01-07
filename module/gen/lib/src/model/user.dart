// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({this.userId, this.id, this.title, this.body});

  /// Get user from json
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String? userId;
  final String? id;
  final String? title;
  final String? body;

  @override
  List<Object?> get props => [userId, id, title, body];

  /// User model to map object
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? userId,
    String? id,
    String? title,
    String? body,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
