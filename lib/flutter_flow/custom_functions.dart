import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double convertPoints(int? points) {
  if (points != null) return points.toDouble() / 100;
  return 0;
}

int countVotes(dynamic pollOptions) {
  num total = 0;
  for (int i = 0; i < pollOptions.length; i++) {
    if (pollOptions[i]["count"] != null) total += pollOptions[i]["count"];
  }
  return total.toInt();
}

String? checkinMessage(DateTime? last) {
  if (last != null) {
    DateTime next = DateTime.utc(last.year, last.month, last.day + 1);
    final now = DateTime.now().toUtc();

    if (next.compareTo(now) > 0) {
      Duration difference = next.difference(now);
      int hours = difference.inHours;
      int minutes = difference.inMinutes.remainder(60);
      return "Next check in: " +
          hours.toString() +
          " hours and " +
          minutes.toString() +
          " minutes";
    }
  }
}

String replaceString(
  String remove,
  String replace,
  String str,
) {
  return str.replaceAll(remove, replace);
}

int clientVoted(
  dynamic pollOptions,
  int idClient,
  DateTime expiration,
) {
  for (int i = 0; i < pollOptions.length; i++) {
    if (pollOptions[i]["ids"] != null) {
      for (int j = 0; j < pollOptions[i]["ids"].length; j++) {
        if (idClient == pollOptions[i]["ids"][j]) return i + 1;
      }
    }
  }

  final now = DateTime.now().toUtc();
  if (now.compareTo(expiration) > 0) return 10;

  return 0;
}

List<PollOptionStruct> convertPollOptions(dynamic pollOptions) {
  List<PollOptionStruct> list = [];
  for (int i = 0; i < pollOptions.length; i++) {
    PollOptionStruct item = new PollOptionStruct();
    item.text = pollOptions[i]["text"];
    item.idOption = pollOptions[i]["id_option"];
    List<int> clients = [];
    if (pollOptions[i]["count"] != null) {
      item.votes = pollOptions[i]["count"];
      for (int j = 0; j < pollOptions[i]["ids"].length; j++) {
        clients.add(pollOptions[i]["ids"][j]);
      }
    } else {
      item.votes = 0;
    }
    item.ids = clients;
    list.add(item);
  }

  return list;
}

double calcVotes(
  dynamic pollOptions,
  int votesOption,
) {
  num total = 0;
  double result;
  for (int i = 0; i < pollOptions.length; i++) {
    if (pollOptions[i]["count"] != null) total += pollOptions[i]["count"];
  }
  result = votesOption / total;
  return result;
}

String addPlus(double num) {
  if (num > 0) {
    if (num % 1 == 0) return "+" + num.truncate().toString();
    return "+" + num.toString();
  }

  if (num % 1 == 0) return num.truncate().toString();
  return num.toString();
}

double toDouble(String? str) {
  if (str == null) return 0;
  String modifiedString = str.replaceAll(RegExp(r'[^0-9],.'), '');
  if (modifiedString == "") return 0;

  return double.parse(modifiedString);
}

int toInt(String? str) {
  if (str == null) return 0;
  String modifiedString = str.replaceAll(RegExp(r'[^0-9]'), '');
  if (modifiedString == "") return 0;

  return int.parse(modifiedString);
}

int changeInt(
  int num,
  String operation,
  int value,
) {
  if (operation == "+") return num + value;
  if (operation == "-") return num - value;
  if (operation == "*") return num * value;
  return num;
}

bool checkSearch(
  String? search,
  String term,
) {
  if (search == null) return true;
  if (search == "") return true;
  search = search.toLowerCase();
  term = term.toLowerCase();
  if (term.contains(search)) return true;
  return false;
}

DateTime changeDate(
  DateTime first,
  int ndays,
) {
  return first.toUtc().add(Duration(days: ndays));
}

String formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

List<ViewPostsViewRow> jsonToPost(dynamic json) {
  List<ViewPostsViewRow> listPosts = [];
  for (int i = 0; i < json.length; i++) {
    listPosts.add(ViewPostsViewRow(json[i]));
  }
  return listPosts;
}

double changeDouble(
  double n1,
  double n2,
  String op,
) {
  if (op == "+") return n1 + n2;
  if (op == "-") return n1 - n2;
  if (op == "*") return n1 * n2;
  if (op == "/") return n1 / n2;
  return 0;
}
