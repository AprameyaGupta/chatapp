///
//  Generated code. Do not modify.
//  source: chatapp.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const JoinUser$json = const {
  '1': 'JoinUser',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const JoinResponse$json = const {
  '1': 'JoinResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'from', '3': 2, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'to', '3': 3, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

const GetMessages$json = const {
  '1': 'GetMessages',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'from', '3': 2, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'to', '3': 3, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

const SendMessages$json = const {
  '1': 'SendMessages',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 11, '6': '.chatapp.Result', '10': 'result'},
  ],
};

const GetUsers$json = const {
  '1': 'GetUsers',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 9, '10': 'request'},
  ],
};

const SendUsers$json = const {
  '1': 'SendUsers',
  '2': const [
    const {'1': 'name', '3': 1, '4': 3, '5': 9, '10': 'name'},
  ],
};

