// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BookingsTable extends Bookings with TableInfo<$BookingsTable, Booking> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _showtimeIdMeta = const VerificationMeta(
    'showtimeId',
  );
  @override
  late final GeneratedColumn<String> showtimeId = GeneratedColumn<String>(
    'showtime_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatsMeta = const VerificationMeta('seats');
  @override
  late final GeneratedColumn<String> seats = GeneratedColumn<String>(
    'seats',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodsMeta = const VerificationMeta('foods');
  @override
  late final GeneratedColumn<String> foods = GeneratedColumn<String>(
    'foods',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalPriceMeta = const VerificationMeta(
    'totalPrice',
  );
  @override
  late final GeneratedColumn<int> totalPrice = GeneratedColumn<int>(
    'total_price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    movieId,
    showtimeId,
    seats,
    foods,
    totalPrice,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Booking> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('seats')) {
      context.handle(
        _seatsMeta,
        seats.isAcceptableOrUnknown(data['seats']!, _seatsMeta),
      );
    } else if (isInserting) {
      context.missing(_seatsMeta);
    }
    if (data.containsKey('foods')) {
      context.handle(
        _foodsMeta,
        foods.isAcceptableOrUnknown(data['foods']!, _foodsMeta),
      );
    } else if (isInserting) {
      context.missing(_foodsMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
        _totalPriceMeta,
        totalPrice.isAcceptableOrUnknown(data['total_price']!, _totalPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Booking map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Booking(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      seats: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seats'],
      )!,
      foods: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}foods'],
      )!,
      totalPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_price'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BookingsTable createAlias(String alias) {
    return $BookingsTable(attachedDatabase, alias);
  }
}

class Booking extends DataClass implements Insertable<Booking> {
  final int id;
  final int movieId;
  final String showtimeId;
  final String seats;
  final String foods;
  final int totalPrice;
  final DateTime createdAt;
  const Booking({
    required this.id,
    required this.movieId,
    required this.showtimeId,
    required this.seats,
    required this.foods,
    required this.totalPrice,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['seats'] = Variable<String>(seats);
    map['foods'] = Variable<String>(foods);
    map['total_price'] = Variable<int>(totalPrice);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BookingsCompanion toCompanion(bool nullToAbsent) {
    return BookingsCompanion(
      id: Value(id),
      movieId: Value(movieId),
      showtimeId: Value(showtimeId),
      seats: Value(seats),
      foods: Value(foods),
      totalPrice: Value(totalPrice),
      createdAt: Value(createdAt),
    );
  }

  factory Booking.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Booking(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      seats: serializer.fromJson<String>(json['seats']),
      foods: serializer.fromJson<String>(json['foods']),
      totalPrice: serializer.fromJson<int>(json['totalPrice']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'seats': serializer.toJson<String>(seats),
      'foods': serializer.toJson<String>(foods),
      'totalPrice': serializer.toJson<int>(totalPrice),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Booking copyWith({
    int? id,
    int? movieId,
    String? showtimeId,
    String? seats,
    String? foods,
    int? totalPrice,
    DateTime? createdAt,
  }) => Booking(
    id: id ?? this.id,
    movieId: movieId ?? this.movieId,
    showtimeId: showtimeId ?? this.showtimeId,
    seats: seats ?? this.seats,
    foods: foods ?? this.foods,
    totalPrice: totalPrice ?? this.totalPrice,
    createdAt: createdAt ?? this.createdAt,
  );
  Booking copyWithCompanion(BookingsCompanion data) {
    return Booking(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      seats: data.seats.present ? data.seats.value : this.seats,
      foods: data.foods.present ? data.foods.value : this.foods,
      totalPrice: data.totalPrice.present
          ? data.totalPrice.value
          : this.totalPrice,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Booking(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('seats: $seats, ')
          ..write('foods: $foods, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, movieId, showtimeId, seats, foods, totalPrice, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Booking &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.showtimeId == this.showtimeId &&
          other.seats == this.seats &&
          other.foods == this.foods &&
          other.totalPrice == this.totalPrice &&
          other.createdAt == this.createdAt);
}

class BookingsCompanion extends UpdateCompanion<Booking> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> showtimeId;
  final Value<String> seats;
  final Value<String> foods;
  final Value<int> totalPrice;
  final Value<DateTime> createdAt;
  const BookingsCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.seats = const Value.absent(),
    this.foods = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  BookingsCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String showtimeId,
    required String seats,
    required String foods,
    required int totalPrice,
    required DateTime createdAt,
  }) : movieId = Value(movieId),
       showtimeId = Value(showtimeId),
       seats = Value(seats),
       foods = Value(foods),
       totalPrice = Value(totalPrice),
       createdAt = Value(createdAt);
  static Insertable<Booking> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? showtimeId,
    Expression<String>? seats,
    Expression<String>? foods,
    Expression<int>? totalPrice,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (seats != null) 'seats': seats,
      if (foods != null) 'foods': foods,
      if (totalPrice != null) 'total_price': totalPrice,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  BookingsCompanion copyWith({
    Value<int>? id,
    Value<int>? movieId,
    Value<String>? showtimeId,
    Value<String>? seats,
    Value<String>? foods,
    Value<int>? totalPrice,
    Value<DateTime>? createdAt,
  }) {
    return BookingsCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      showtimeId: showtimeId ?? this.showtimeId,
      seats: seats ?? this.seats,
      foods: foods ?? this.foods,
      totalPrice: totalPrice ?? this.totalPrice,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (seats.present) {
      map['seats'] = Variable<String>(seats.value);
    }
    if (foods.present) {
      map['foods'] = Variable<String>(foods.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<int>(totalPrice.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookingsCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('seats: $seats, ')
          ..write('foods: $foods, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SeatLocksTable extends SeatLocks
    with TableInfo<$SeatLocksTable, SeatLock> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeatLocksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _showtimeIdMeta = const VerificationMeta(
    'showtimeId',
  );
  @override
  late final GeneratedColumn<String> showtimeId = GeneratedColumn<String>(
    'showtime_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _lockedSeatsMeta = const VerificationMeta(
    'lockedSeats',
  );
  @override
  late final GeneratedColumn<String> lockedSeats = GeneratedColumn<String>(
    'locked_seats',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, showtimeId, lockedSeats];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'seat_locks';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeatLock> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('locked_seats')) {
      context.handle(
        _lockedSeatsMeta,
        lockedSeats.isAcceptableOrUnknown(
          data['locked_seats']!,
          _lockedSeatsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lockedSeatsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeatLock map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeatLock(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      lockedSeats: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}locked_seats'],
      )!,
    );
  }

  @override
  $SeatLocksTable createAlias(String alias) {
    return $SeatLocksTable(attachedDatabase, alias);
  }
}

class SeatLock extends DataClass implements Insertable<SeatLock> {
  final int id;
  final String showtimeId;
  final String lockedSeats;
  const SeatLock({
    required this.id,
    required this.showtimeId,
    required this.lockedSeats,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['locked_seats'] = Variable<String>(lockedSeats);
    return map;
  }

  SeatLocksCompanion toCompanion(bool nullToAbsent) {
    return SeatLocksCompanion(
      id: Value(id),
      showtimeId: Value(showtimeId),
      lockedSeats: Value(lockedSeats),
    );
  }

  factory SeatLock.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeatLock(
      id: serializer.fromJson<int>(json['id']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      lockedSeats: serializer.fromJson<String>(json['lockedSeats']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'lockedSeats': serializer.toJson<String>(lockedSeats),
    };
  }

  SeatLock copyWith({int? id, String? showtimeId, String? lockedSeats}) =>
      SeatLock(
        id: id ?? this.id,
        showtimeId: showtimeId ?? this.showtimeId,
        lockedSeats: lockedSeats ?? this.lockedSeats,
      );
  SeatLock copyWithCompanion(SeatLocksCompanion data) {
    return SeatLock(
      id: data.id.present ? data.id.value : this.id,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      lockedSeats: data.lockedSeats.present
          ? data.lockedSeats.value
          : this.lockedSeats,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeatLock(')
          ..write('id: $id, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('lockedSeats: $lockedSeats')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, showtimeId, lockedSeats);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeatLock &&
          other.id == this.id &&
          other.showtimeId == this.showtimeId &&
          other.lockedSeats == this.lockedSeats);
}

class SeatLocksCompanion extends UpdateCompanion<SeatLock> {
  final Value<int> id;
  final Value<String> showtimeId;
  final Value<String> lockedSeats;
  const SeatLocksCompanion({
    this.id = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.lockedSeats = const Value.absent(),
  });
  SeatLocksCompanion.insert({
    this.id = const Value.absent(),
    required String showtimeId,
    required String lockedSeats,
  }) : showtimeId = Value(showtimeId),
       lockedSeats = Value(lockedSeats);
  static Insertable<SeatLock> custom({
    Expression<int>? id,
    Expression<String>? showtimeId,
    Expression<String>? lockedSeats,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (lockedSeats != null) 'locked_seats': lockedSeats,
    });
  }

  SeatLocksCompanion copyWith({
    Value<int>? id,
    Value<String>? showtimeId,
    Value<String>? lockedSeats,
  }) {
    return SeatLocksCompanion(
      id: id ?? this.id,
      showtimeId: showtimeId ?? this.showtimeId,
      lockedSeats: lockedSeats ?? this.lockedSeats,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (lockedSeats.present) {
      map['locked_seats'] = Variable<String>(lockedSeats.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeatLocksCompanion(')
          ..write('id: $id, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('lockedSeats: $lockedSeats')
          ..write(')'))
        .toString();
  }
}

class $TicketsTable extends Tickets with TableInfo<$TicketsTable, Ticket> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TicketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _showtimeIdMeta = const VerificationMeta(
    'showtimeId',
  );
  @override
  late final GeneratedColumn<String> showtimeId = GeneratedColumn<String>(
    'showtime_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatsMeta = const VerificationMeta('seats');
  @override
  late final GeneratedColumn<String> seats = GeneratedColumn<String>(
    'seats',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _issuedAtMeta = const VerificationMeta(
    'issuedAt',
  );
  @override
  late final GeneratedColumn<DateTime> issuedAt = GeneratedColumn<DateTime>(
    'issued_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    movieId,
    showtimeId,
    seats,
    issuedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tickets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Ticket> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('seats')) {
      context.handle(
        _seatsMeta,
        seats.isAcceptableOrUnknown(data['seats']!, _seatsMeta),
      );
    } else if (isInserting) {
      context.missing(_seatsMeta);
    }
    if (data.containsKey('issued_at')) {
      context.handle(
        _issuedAtMeta,
        issuedAt.isAcceptableOrUnknown(data['issued_at']!, _issuedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_issuedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Ticket map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ticket(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      seats: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seats'],
      )!,
      issuedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}issued_at'],
      )!,
    );
  }

  @override
  $TicketsTable createAlias(String alias) {
    return $TicketsTable(attachedDatabase, alias);
  }
}

class Ticket extends DataClass implements Insertable<Ticket> {
  final int id;
  final int movieId;
  final String showtimeId;
  final String seats;
  final DateTime issuedAt;
  const Ticket({
    required this.id,
    required this.movieId,
    required this.showtimeId,
    required this.seats,
    required this.issuedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['seats'] = Variable<String>(seats);
    map['issued_at'] = Variable<DateTime>(issuedAt);
    return map;
  }

  TicketsCompanion toCompanion(bool nullToAbsent) {
    return TicketsCompanion(
      id: Value(id),
      movieId: Value(movieId),
      showtimeId: Value(showtimeId),
      seats: Value(seats),
      issuedAt: Value(issuedAt),
    );
  }

  factory Ticket.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ticket(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      seats: serializer.fromJson<String>(json['seats']),
      issuedAt: serializer.fromJson<DateTime>(json['issuedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'seats': serializer.toJson<String>(seats),
      'issuedAt': serializer.toJson<DateTime>(issuedAt),
    };
  }

  Ticket copyWith({
    int? id,
    int? movieId,
    String? showtimeId,
    String? seats,
    DateTime? issuedAt,
  }) => Ticket(
    id: id ?? this.id,
    movieId: movieId ?? this.movieId,
    showtimeId: showtimeId ?? this.showtimeId,
    seats: seats ?? this.seats,
    issuedAt: issuedAt ?? this.issuedAt,
  );
  Ticket copyWithCompanion(TicketsCompanion data) {
    return Ticket(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      seats: data.seats.present ? data.seats.value : this.seats,
      issuedAt: data.issuedAt.present ? data.issuedAt.value : this.issuedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Ticket(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('seats: $seats, ')
          ..write('issuedAt: $issuedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, movieId, showtimeId, seats, issuedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ticket &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.showtimeId == this.showtimeId &&
          other.seats == this.seats &&
          other.issuedAt == this.issuedAt);
}

class TicketsCompanion extends UpdateCompanion<Ticket> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> showtimeId;
  final Value<String> seats;
  final Value<DateTime> issuedAt;
  const TicketsCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.seats = const Value.absent(),
    this.issuedAt = const Value.absent(),
  });
  TicketsCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String showtimeId,
    required String seats,
    required DateTime issuedAt,
  }) : movieId = Value(movieId),
       showtimeId = Value(showtimeId),
       seats = Value(seats),
       issuedAt = Value(issuedAt);
  static Insertable<Ticket> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? showtimeId,
    Expression<String>? seats,
    Expression<DateTime>? issuedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (seats != null) 'seats': seats,
      if (issuedAt != null) 'issued_at': issuedAt,
    });
  }

  TicketsCompanion copyWith({
    Value<int>? id,
    Value<int>? movieId,
    Value<String>? showtimeId,
    Value<String>? seats,
    Value<DateTime>? issuedAt,
  }) {
    return TicketsCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      showtimeId: showtimeId ?? this.showtimeId,
      seats: seats ?? this.seats,
      issuedAt: issuedAt ?? this.issuedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (seats.present) {
      map['seats'] = Variable<String>(seats.value);
    }
    if (issuedAt.present) {
      map['issued_at'] = Variable<DateTime>(issuedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TicketsCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('seats: $seats, ')
          ..write('issuedAt: $issuedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BookingsTable bookings = $BookingsTable(this);
  late final $SeatLocksTable seatLocks = $SeatLocksTable(this);
  late final $TicketsTable tickets = $TicketsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    bookings,
    seatLocks,
    tickets,
  ];
}

typedef $$BookingsTableCreateCompanionBuilder =
    BookingsCompanion Function({
      Value<int> id,
      required int movieId,
      required String showtimeId,
      required String seats,
      required String foods,
      required int totalPrice,
      required DateTime createdAt,
    });
typedef $$BookingsTableUpdateCompanionBuilder =
    BookingsCompanion Function({
      Value<int> id,
      Value<int> movieId,
      Value<String> showtimeId,
      Value<String> seats,
      Value<String> foods,
      Value<int> totalPrice,
      Value<DateTime> createdAt,
    });

class $$BookingsTableFilterComposer
    extends Composer<_$AppDatabase, $BookingsTable> {
  $$BookingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seats => $composableBuilder(
    column: $table.seats,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get foods => $composableBuilder(
    column: $table.foods,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BookingsTableOrderingComposer
    extends Composer<_$AppDatabase, $BookingsTable> {
  $$BookingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seats => $composableBuilder(
    column: $table.seats,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get foods => $composableBuilder(
    column: $table.foods,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BookingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookingsTable> {
  $$BookingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get seats =>
      $composableBuilder(column: $table.seats, builder: (column) => column);

  GeneratedColumn<String> get foods =>
      $composableBuilder(column: $table.foods, builder: (column) => column);

  GeneratedColumn<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$BookingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BookingsTable,
          Booking,
          $$BookingsTableFilterComposer,
          $$BookingsTableOrderingComposer,
          $$BookingsTableAnnotationComposer,
          $$BookingsTableCreateCompanionBuilder,
          $$BookingsTableUpdateCompanionBuilder,
          (Booking, BaseReferences<_$AppDatabase, $BookingsTable, Booking>),
          Booking,
          PrefetchHooks Function()
        > {
  $$BookingsTableTableManager(_$AppDatabase db, $BookingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<String> seats = const Value.absent(),
                Value<String> foods = const Value.absent(),
                Value<int> totalPrice = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => BookingsCompanion(
                id: id,
                movieId: movieId,
                showtimeId: showtimeId,
                seats: seats,
                foods: foods,
                totalPrice: totalPrice,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int movieId,
                required String showtimeId,
                required String seats,
                required String foods,
                required int totalPrice,
                required DateTime createdAt,
              }) => BookingsCompanion.insert(
                id: id,
                movieId: movieId,
                showtimeId: showtimeId,
                seats: seats,
                foods: foods,
                totalPrice: totalPrice,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BookingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BookingsTable,
      Booking,
      $$BookingsTableFilterComposer,
      $$BookingsTableOrderingComposer,
      $$BookingsTableAnnotationComposer,
      $$BookingsTableCreateCompanionBuilder,
      $$BookingsTableUpdateCompanionBuilder,
      (Booking, BaseReferences<_$AppDatabase, $BookingsTable, Booking>),
      Booking,
      PrefetchHooks Function()
    >;
typedef $$SeatLocksTableCreateCompanionBuilder =
    SeatLocksCompanion Function({
      Value<int> id,
      required String showtimeId,
      required String lockedSeats,
    });
typedef $$SeatLocksTableUpdateCompanionBuilder =
    SeatLocksCompanion Function({
      Value<int> id,
      Value<String> showtimeId,
      Value<String> lockedSeats,
    });

class $$SeatLocksTableFilterComposer
    extends Composer<_$AppDatabase, $SeatLocksTable> {
  $$SeatLocksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lockedSeats => $composableBuilder(
    column: $table.lockedSeats,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SeatLocksTableOrderingComposer
    extends Composer<_$AppDatabase, $SeatLocksTable> {
  $$SeatLocksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lockedSeats => $composableBuilder(
    column: $table.lockedSeats,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SeatLocksTableAnnotationComposer
    extends Composer<_$AppDatabase, $SeatLocksTable> {
  $$SeatLocksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lockedSeats => $composableBuilder(
    column: $table.lockedSeats,
    builder: (column) => column,
  );
}

class $$SeatLocksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SeatLocksTable,
          SeatLock,
          $$SeatLocksTableFilterComposer,
          $$SeatLocksTableOrderingComposer,
          $$SeatLocksTableAnnotationComposer,
          $$SeatLocksTableCreateCompanionBuilder,
          $$SeatLocksTableUpdateCompanionBuilder,
          (SeatLock, BaseReferences<_$AppDatabase, $SeatLocksTable, SeatLock>),
          SeatLock,
          PrefetchHooks Function()
        > {
  $$SeatLocksTableTableManager(_$AppDatabase db, $SeatLocksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeatLocksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeatLocksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeatLocksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<String> lockedSeats = const Value.absent(),
              }) => SeatLocksCompanion(
                id: id,
                showtimeId: showtimeId,
                lockedSeats: lockedSeats,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String showtimeId,
                required String lockedSeats,
              }) => SeatLocksCompanion.insert(
                id: id,
                showtimeId: showtimeId,
                lockedSeats: lockedSeats,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SeatLocksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SeatLocksTable,
      SeatLock,
      $$SeatLocksTableFilterComposer,
      $$SeatLocksTableOrderingComposer,
      $$SeatLocksTableAnnotationComposer,
      $$SeatLocksTableCreateCompanionBuilder,
      $$SeatLocksTableUpdateCompanionBuilder,
      (SeatLock, BaseReferences<_$AppDatabase, $SeatLocksTable, SeatLock>),
      SeatLock,
      PrefetchHooks Function()
    >;
typedef $$TicketsTableCreateCompanionBuilder =
    TicketsCompanion Function({
      Value<int> id,
      required int movieId,
      required String showtimeId,
      required String seats,
      required DateTime issuedAt,
    });
typedef $$TicketsTableUpdateCompanionBuilder =
    TicketsCompanion Function({
      Value<int> id,
      Value<int> movieId,
      Value<String> showtimeId,
      Value<String> seats,
      Value<DateTime> issuedAt,
    });

class $$TicketsTableFilterComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seats => $composableBuilder(
    column: $table.seats,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TicketsTableOrderingComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seats => $composableBuilder(
    column: $table.seats,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TicketsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get seats =>
      $composableBuilder(column: $table.seats, builder: (column) => column);

  GeneratedColumn<DateTime> get issuedAt =>
      $composableBuilder(column: $table.issuedAt, builder: (column) => column);
}

class $$TicketsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TicketsTable,
          Ticket,
          $$TicketsTableFilterComposer,
          $$TicketsTableOrderingComposer,
          $$TicketsTableAnnotationComposer,
          $$TicketsTableCreateCompanionBuilder,
          $$TicketsTableUpdateCompanionBuilder,
          (Ticket, BaseReferences<_$AppDatabase, $TicketsTable, Ticket>),
          Ticket,
          PrefetchHooks Function()
        > {
  $$TicketsTableTableManager(_$AppDatabase db, $TicketsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TicketsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TicketsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TicketsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<String> seats = const Value.absent(),
                Value<DateTime> issuedAt = const Value.absent(),
              }) => TicketsCompanion(
                id: id,
                movieId: movieId,
                showtimeId: showtimeId,
                seats: seats,
                issuedAt: issuedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int movieId,
                required String showtimeId,
                required String seats,
                required DateTime issuedAt,
              }) => TicketsCompanion.insert(
                id: id,
                movieId: movieId,
                showtimeId: showtimeId,
                seats: seats,
                issuedAt: issuedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TicketsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TicketsTable,
      Ticket,
      $$TicketsTableFilterComposer,
      $$TicketsTableOrderingComposer,
      $$TicketsTableAnnotationComposer,
      $$TicketsTableCreateCompanionBuilder,
      $$TicketsTableUpdateCompanionBuilder,
      (Ticket, BaseReferences<_$AppDatabase, $TicketsTable, Ticket>),
      Ticket,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BookingsTableTableManager get bookings =>
      $$BookingsTableTableManager(_db, _db.bookings);
  $$SeatLocksTableTableManager get seatLocks =>
      $$SeatLocksTableTableManager(_db, _db.seatLocks);
  $$TicketsTableTableManager get tickets =>
      $$TicketsTableTableManager(_db, _db.tickets);
}
