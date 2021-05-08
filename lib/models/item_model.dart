import 'dart:convert';

import 'package:flutter/material.dart';

class ItemModel {
  final int id;
  final String type;
  final String name;
  final String serialID;
  final String topic;
  final String moreComment;
  final Color color;
  final String time1;
  final String time2;
  final String status;
  ItemModel({
    this.id,
    this.type,
    this.name,
    this.serialID,
    this.topic,
    this.moreComment,
    this.color,
    this.time1,
    this.time2,
    this.status,
  });

  ItemModel copyWith({
    int id,
    String type,
    String name,
    String serialID,
    String topic,
    String moreComment,
    Color color,
    String time1,
    String time2,
    String status,
  }) {
    return ItemModel(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      serialID: serialID ?? this.serialID,
      topic: topic ?? this.topic,
      moreComment: moreComment ?? this.moreComment,
      color: color ?? this.color,
      time1: time1 ?? this.time1,
      time2: time2 ?? this.time2,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'serialID': serialID,
      'topic': topic,
      'moreComment': moreComment,
      'color': color.value,
      'time1': time1,
      'time2': time2,
      'status': status,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'],
      type: map['type'],
      name: map['name'],
      serialID: map['serialID'],
      topic: map['topic'],
      moreComment: map['moreComment'],
      color: Color(map['color']),
      time1: map['time1'],
      time2: map['time2'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemModel(id: $id, type: $type, name: $name, serialID: $serialID, topic: $topic, moreComment: $moreComment, color: $color, time1: $time1, time2: $time2, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemModel &&
        other.id == id &&
        other.type == type &&
        other.name == name &&
        other.serialID == serialID &&
        other.topic == topic &&
        other.moreComment == moreComment &&
        other.color == color &&
        other.time1 == time1 &&
        other.time2 == time2 &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        name.hashCode ^
        serialID.hashCode ^
        topic.hashCode ^
        moreComment.hashCode ^
        color.hashCode ^
        time1.hashCode ^
        time2.hashCode ^
        status.hashCode;
  }
}
