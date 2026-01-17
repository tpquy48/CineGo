// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BookingsTableTable extends BookingsTable
    with TableInfo<$BookingsTableTable, BookingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bookingIdMeta = const VerificationMeta(
    'bookingId',
  );
  @override
  late final GeneratedColumn<String> bookingId = GeneratedColumn<String>(
    'booking_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
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
  static const VerificationMeta _issuedAtMeta = const VerificationMeta(
    'issuedAt',
  );
  @override
  late final GeneratedColumn<DateTime> issuedAt = GeneratedColumn<DateTime>(
    'issued_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('PENDING'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    bookingId,
    showtimeId,
    movieId,
    totalPrice,
    createdAt,
    issuedAt,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookings_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BookingsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('booking_id')) {
      context.handle(
        _bookingIdMeta,
        bookingId.isAcceptableOrUnknown(data['booking_id']!, _bookingIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookingIdMeta);
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
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
    if (data.containsKey('issued_at')) {
      context.handle(
        _issuedAtMeta,
        issuedAt.isAcceptableOrUnknown(data['issued_at']!, _issuedAtMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bookingId};
  @override
  BookingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookingsTableData(
      bookingId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}booking_id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      totalPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_price'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      issuedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}issued_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $BookingsTableTable createAlias(String alias) {
    return $BookingsTableTable(attachedDatabase, alias);
  }
}

class BookingsTableData extends DataClass
    implements Insertable<BookingsTableData> {
  final String bookingId;

  /// FK → ShowtimesTable
  final String showtimeId;

  /// Denormalized for performance & history
  final int movieId;
  final int totalPrice;

  /// When user pressed "Confirm"
  final DateTime createdAt;

  /// When payment succeeded (nullable for now)
  final DateTime? issuedAt;

  /// Booking lifecycle
  final String status;
  const BookingsTableData({
    required this.bookingId,
    required this.showtimeId,
    required this.movieId,
    required this.totalPrice,
    required this.createdAt,
    this.issuedAt,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['booking_id'] = Variable<String>(bookingId);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['movie_id'] = Variable<int>(movieId);
    map['total_price'] = Variable<int>(totalPrice);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || issuedAt != null) {
      map['issued_at'] = Variable<DateTime>(issuedAt);
    }
    map['status'] = Variable<String>(status);
    return map;
  }

  BookingsTableCompanion toCompanion(bool nullToAbsent) {
    return BookingsTableCompanion(
      bookingId: Value(bookingId),
      showtimeId: Value(showtimeId),
      movieId: Value(movieId),
      totalPrice: Value(totalPrice),
      createdAt: Value(createdAt),
      issuedAt: issuedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(issuedAt),
      status: Value(status),
    );
  }

  factory BookingsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookingsTableData(
      bookingId: serializer.fromJson<String>(json['bookingId']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      movieId: serializer.fromJson<int>(json['movieId']),
      totalPrice: serializer.fromJson<int>(json['totalPrice']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      issuedAt: serializer.fromJson<DateTime?>(json['issuedAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bookingId': serializer.toJson<String>(bookingId),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'movieId': serializer.toJson<int>(movieId),
      'totalPrice': serializer.toJson<int>(totalPrice),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'issuedAt': serializer.toJson<DateTime?>(issuedAt),
      'status': serializer.toJson<String>(status),
    };
  }

  BookingsTableData copyWith({
    String? bookingId,
    String? showtimeId,
    int? movieId,
    int? totalPrice,
    DateTime? createdAt,
    Value<DateTime?> issuedAt = const Value.absent(),
    String? status,
  }) => BookingsTableData(
    bookingId: bookingId ?? this.bookingId,
    showtimeId: showtimeId ?? this.showtimeId,
    movieId: movieId ?? this.movieId,
    totalPrice: totalPrice ?? this.totalPrice,
    createdAt: createdAt ?? this.createdAt,
    issuedAt: issuedAt.present ? issuedAt.value : this.issuedAt,
    status: status ?? this.status,
  );
  BookingsTableData copyWithCompanion(BookingsTableCompanion data) {
    return BookingsTableData(
      bookingId: data.bookingId.present ? data.bookingId.value : this.bookingId,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      totalPrice: data.totalPrice.present
          ? data.totalPrice.value
          : this.totalPrice,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      issuedAt: data.issuedAt.present ? data.issuedAt.value : this.issuedAt,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookingsTableData(')
          ..write('bookingId: $bookingId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('movieId: $movieId, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt, ')
          ..write('issuedAt: $issuedAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    bookingId,
    showtimeId,
    movieId,
    totalPrice,
    createdAt,
    issuedAt,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookingsTableData &&
          other.bookingId == this.bookingId &&
          other.showtimeId == this.showtimeId &&
          other.movieId == this.movieId &&
          other.totalPrice == this.totalPrice &&
          other.createdAt == this.createdAt &&
          other.issuedAt == this.issuedAt &&
          other.status == this.status);
}

class BookingsTableCompanion extends UpdateCompanion<BookingsTableData> {
  final Value<String> bookingId;
  final Value<String> showtimeId;
  final Value<int> movieId;
  final Value<int> totalPrice;
  final Value<DateTime> createdAt;
  final Value<DateTime?> issuedAt;
  final Value<String> status;
  final Value<int> rowid;
  const BookingsTableCompanion({
    this.bookingId = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.movieId = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.issuedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookingsTableCompanion.insert({
    required String bookingId,
    required String showtimeId,
    required int movieId,
    required int totalPrice,
    required DateTime createdAt,
    this.issuedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : bookingId = Value(bookingId),
       showtimeId = Value(showtimeId),
       movieId = Value(movieId),
       totalPrice = Value(totalPrice),
       createdAt = Value(createdAt);
  static Insertable<BookingsTableData> custom({
    Expression<String>? bookingId,
    Expression<String>? showtimeId,
    Expression<int>? movieId,
    Expression<int>? totalPrice,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? issuedAt,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (bookingId != null) 'booking_id': bookingId,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (movieId != null) 'movie_id': movieId,
      if (totalPrice != null) 'total_price': totalPrice,
      if (createdAt != null) 'created_at': createdAt,
      if (issuedAt != null) 'issued_at': issuedAt,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookingsTableCompanion copyWith({
    Value<String>? bookingId,
    Value<String>? showtimeId,
    Value<int>? movieId,
    Value<int>? totalPrice,
    Value<DateTime>? createdAt,
    Value<DateTime?>? issuedAt,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return BookingsTableCompanion(
      bookingId: bookingId ?? this.bookingId,
      showtimeId: showtimeId ?? this.showtimeId,
      movieId: movieId ?? this.movieId,
      totalPrice: totalPrice ?? this.totalPrice,
      createdAt: createdAt ?? this.createdAt,
      issuedAt: issuedAt ?? this.issuedAt,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bookingId.present) {
      map['booking_id'] = Variable<String>(bookingId.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<int>(totalPrice.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (issuedAt.present) {
      map['issued_at'] = Variable<DateTime>(issuedAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookingsTableCompanion(')
          ..write('bookingId: $bookingId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('movieId: $movieId, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('createdAt: $createdAt, ')
          ..write('issuedAt: $issuedAt, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SeatLocksTableTable extends SeatLocksTable
    with TableInfo<$SeatLocksTableTable, SeatLocksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeatLocksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _seatIdMeta = const VerificationMeta('seatId');
  @override
  late final GeneratedColumn<String> seatId = GeneratedColumn<String>(
    'seat_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
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
  static const VerificationMeta _lockedAtMeta = const VerificationMeta(
    'lockedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lockedAt = GeneratedColumn<DateTime>(
    'locked_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [seatId, showtimeId, lockedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'seat_locks_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeatLocksTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('seat_id')) {
      context.handle(
        _seatIdMeta,
        seatId.isAcceptableOrUnknown(data['seat_id']!, _seatIdMeta),
      );
    } else if (isInserting) {
      context.missing(_seatIdMeta);
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('locked_at')) {
      context.handle(
        _lockedAtMeta,
        lockedAt.isAcceptableOrUnknown(data['locked_at']!, _lockedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_lockedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {seatId, showtimeId};
  @override
  SeatLocksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeatLocksTableData(
      seatId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seat_id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      lockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}locked_at'],
      )!,
    );
  }

  @override
  $SeatLocksTableTable createAlias(String alias) {
    return $SeatLocksTableTable(attachedDatabase, alias);
  }
}

class SeatLocksTableData extends DataClass
    implements Insertable<SeatLocksTableData> {
  final String seatId;
  final String showtimeId;
  final DateTime lockedAt;
  const SeatLocksTableData({
    required this.seatId,
    required this.showtimeId,
    required this.lockedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['seat_id'] = Variable<String>(seatId);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['locked_at'] = Variable<DateTime>(lockedAt);
    return map;
  }

  SeatLocksTableCompanion toCompanion(bool nullToAbsent) {
    return SeatLocksTableCompanion(
      seatId: Value(seatId),
      showtimeId: Value(showtimeId),
      lockedAt: Value(lockedAt),
    );
  }

  factory SeatLocksTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeatLocksTableData(
      seatId: serializer.fromJson<String>(json['seatId']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      lockedAt: serializer.fromJson<DateTime>(json['lockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'seatId': serializer.toJson<String>(seatId),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'lockedAt': serializer.toJson<DateTime>(lockedAt),
    };
  }

  SeatLocksTableData copyWith({
    String? seatId,
    String? showtimeId,
    DateTime? lockedAt,
  }) => SeatLocksTableData(
    seatId: seatId ?? this.seatId,
    showtimeId: showtimeId ?? this.showtimeId,
    lockedAt: lockedAt ?? this.lockedAt,
  );
  SeatLocksTableData copyWithCompanion(SeatLocksTableCompanion data) {
    return SeatLocksTableData(
      seatId: data.seatId.present ? data.seatId.value : this.seatId,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      lockedAt: data.lockedAt.present ? data.lockedAt.value : this.lockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeatLocksTableData(')
          ..write('seatId: $seatId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('lockedAt: $lockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(seatId, showtimeId, lockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeatLocksTableData &&
          other.seatId == this.seatId &&
          other.showtimeId == this.showtimeId &&
          other.lockedAt == this.lockedAt);
}

class SeatLocksTableCompanion extends UpdateCompanion<SeatLocksTableData> {
  final Value<String> seatId;
  final Value<String> showtimeId;
  final Value<DateTime> lockedAt;
  final Value<int> rowid;
  const SeatLocksTableCompanion({
    this.seatId = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.lockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SeatLocksTableCompanion.insert({
    required String seatId,
    required String showtimeId,
    required DateTime lockedAt,
    this.rowid = const Value.absent(),
  }) : seatId = Value(seatId),
       showtimeId = Value(showtimeId),
       lockedAt = Value(lockedAt);
  static Insertable<SeatLocksTableData> custom({
    Expression<String>? seatId,
    Expression<String>? showtimeId,
    Expression<DateTime>? lockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (seatId != null) 'seat_id': seatId,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (lockedAt != null) 'locked_at': lockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SeatLocksTableCompanion copyWith({
    Value<String>? seatId,
    Value<String>? showtimeId,
    Value<DateTime>? lockedAt,
    Value<int>? rowid,
  }) {
    return SeatLocksTableCompanion(
      seatId: seatId ?? this.seatId,
      showtimeId: showtimeId ?? this.showtimeId,
      lockedAt: lockedAt ?? this.lockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (seatId.present) {
      map['seat_id'] = Variable<String>(seatId.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (lockedAt.present) {
      map['locked_at'] = Variable<DateTime>(lockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeatLocksTableCompanion(')
          ..write('seatId: $seatId, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('lockedAt: $lockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TicketsTableTable extends TicketsTable
    with TableInfo<$TicketsTableTable, TicketsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TicketsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ticketIdMeta = const VerificationMeta(
    'ticketId',
  );
  @override
  late final GeneratedColumn<String> ticketId = GeneratedColumn<String>(
    'ticket_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookingIdMeta = const VerificationMeta(
    'bookingId',
  );
  @override
  late final GeneratedColumn<String> bookingId = GeneratedColumn<String>(
    'booking_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatIdMeta = const VerificationMeta('seatId');
  @override
  late final GeneratedColumn<String> seatId = GeneratedColumn<String>(
    'seat_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.int,
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
    ticketId,
    bookingId,
    seatId,
    price,
    issuedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tickets_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TicketsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ticket_id')) {
      context.handle(
        _ticketIdMeta,
        ticketId.isAcceptableOrUnknown(data['ticket_id']!, _ticketIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ticketIdMeta);
    }
    if (data.containsKey('booking_id')) {
      context.handle(
        _bookingIdMeta,
        bookingId.isAcceptableOrUnknown(data['booking_id']!, _bookingIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookingIdMeta);
    }
    if (data.containsKey('seat_id')) {
      context.handle(
        _seatIdMeta,
        seatId.isAcceptableOrUnknown(data['seat_id']!, _seatIdMeta),
      );
    } else if (isInserting) {
      context.missing(_seatIdMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
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
  Set<GeneratedColumn> get $primaryKey => {ticketId};
  @override
  TicketsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TicketsTableData(
      ticketId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket_id'],
      )!,
      bookingId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}booking_id'],
      )!,
      seatId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seat_id'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price'],
      )!,
      issuedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}issued_at'],
      )!,
    );
  }

  @override
  $TicketsTableTable createAlias(String alias) {
    return $TicketsTableTable(attachedDatabase, alias);
  }
}

class TicketsTableData extends DataClass
    implements Insertable<TicketsTableData> {
  final String ticketId;

  /// FK → BookingsTable
  final String bookingId;

  /// FK → SeatsTable
  final String seatId;

  /// Snapshot price (VERY important)
  final int price;

  /// When ticket is officially issued
  final DateTime issuedAt;
  const TicketsTableData({
    required this.ticketId,
    required this.bookingId,
    required this.seatId,
    required this.price,
    required this.issuedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ticket_id'] = Variable<String>(ticketId);
    map['booking_id'] = Variable<String>(bookingId);
    map['seat_id'] = Variable<String>(seatId);
    map['price'] = Variable<int>(price);
    map['issued_at'] = Variable<DateTime>(issuedAt);
    return map;
  }

  TicketsTableCompanion toCompanion(bool nullToAbsent) {
    return TicketsTableCompanion(
      ticketId: Value(ticketId),
      bookingId: Value(bookingId),
      seatId: Value(seatId),
      price: Value(price),
      issuedAt: Value(issuedAt),
    );
  }

  factory TicketsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TicketsTableData(
      ticketId: serializer.fromJson<String>(json['ticketId']),
      bookingId: serializer.fromJson<String>(json['bookingId']),
      seatId: serializer.fromJson<String>(json['seatId']),
      price: serializer.fromJson<int>(json['price']),
      issuedAt: serializer.fromJson<DateTime>(json['issuedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ticketId': serializer.toJson<String>(ticketId),
      'bookingId': serializer.toJson<String>(bookingId),
      'seatId': serializer.toJson<String>(seatId),
      'price': serializer.toJson<int>(price),
      'issuedAt': serializer.toJson<DateTime>(issuedAt),
    };
  }

  TicketsTableData copyWith({
    String? ticketId,
    String? bookingId,
    String? seatId,
    int? price,
    DateTime? issuedAt,
  }) => TicketsTableData(
    ticketId: ticketId ?? this.ticketId,
    bookingId: bookingId ?? this.bookingId,
    seatId: seatId ?? this.seatId,
    price: price ?? this.price,
    issuedAt: issuedAt ?? this.issuedAt,
  );
  TicketsTableData copyWithCompanion(TicketsTableCompanion data) {
    return TicketsTableData(
      ticketId: data.ticketId.present ? data.ticketId.value : this.ticketId,
      bookingId: data.bookingId.present ? data.bookingId.value : this.bookingId,
      seatId: data.seatId.present ? data.seatId.value : this.seatId,
      price: data.price.present ? data.price.value : this.price,
      issuedAt: data.issuedAt.present ? data.issuedAt.value : this.issuedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TicketsTableData(')
          ..write('ticketId: $ticketId, ')
          ..write('bookingId: $bookingId, ')
          ..write('seatId: $seatId, ')
          ..write('price: $price, ')
          ..write('issuedAt: $issuedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ticketId, bookingId, seatId, price, issuedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TicketsTableData &&
          other.ticketId == this.ticketId &&
          other.bookingId == this.bookingId &&
          other.seatId == this.seatId &&
          other.price == this.price &&
          other.issuedAt == this.issuedAt);
}

class TicketsTableCompanion extends UpdateCompanion<TicketsTableData> {
  final Value<String> ticketId;
  final Value<String> bookingId;
  final Value<String> seatId;
  final Value<int> price;
  final Value<DateTime> issuedAt;
  final Value<int> rowid;
  const TicketsTableCompanion({
    this.ticketId = const Value.absent(),
    this.bookingId = const Value.absent(),
    this.seatId = const Value.absent(),
    this.price = const Value.absent(),
    this.issuedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TicketsTableCompanion.insert({
    required String ticketId,
    required String bookingId,
    required String seatId,
    required int price,
    required DateTime issuedAt,
    this.rowid = const Value.absent(),
  }) : ticketId = Value(ticketId),
       bookingId = Value(bookingId),
       seatId = Value(seatId),
       price = Value(price),
       issuedAt = Value(issuedAt);
  static Insertable<TicketsTableData> custom({
    Expression<String>? ticketId,
    Expression<String>? bookingId,
    Expression<String>? seatId,
    Expression<int>? price,
    Expression<DateTime>? issuedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ticketId != null) 'ticket_id': ticketId,
      if (bookingId != null) 'booking_id': bookingId,
      if (seatId != null) 'seat_id': seatId,
      if (price != null) 'price': price,
      if (issuedAt != null) 'issued_at': issuedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TicketsTableCompanion copyWith({
    Value<String>? ticketId,
    Value<String>? bookingId,
    Value<String>? seatId,
    Value<int>? price,
    Value<DateTime>? issuedAt,
    Value<int>? rowid,
  }) {
    return TicketsTableCompanion(
      ticketId: ticketId ?? this.ticketId,
      bookingId: bookingId ?? this.bookingId,
      seatId: seatId ?? this.seatId,
      price: price ?? this.price,
      issuedAt: issuedAt ?? this.issuedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ticketId.present) {
      map['ticket_id'] = Variable<String>(ticketId.value);
    }
    if (bookingId.present) {
      map['booking_id'] = Variable<String>(bookingId.value);
    }
    if (seatId.present) {
      map['seat_id'] = Variable<String>(seatId.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (issuedAt.present) {
      map['issued_at'] = Variable<DateTime>(issuedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TicketsTableCompanion(')
          ..write('ticketId: $ticketId, ')
          ..write('bookingId: $bookingId, ')
          ..write('seatId: $seatId, ')
          ..write('price: $price, ')
          ..write('issuedAt: $issuedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SeatsTableTable extends SeatsTable
    with TableInfo<$SeatsTableTable, SeatsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeatsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
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
  static const VerificationMeta _rowMeta = const VerificationMeta('row');
  @override
  late final GeneratedColumn<String> row = GeneratedColumn<String>(
    'row',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, showtimeId, row, number, price];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'seats_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeatsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('showtime_id')) {
      context.handle(
        _showtimeIdMeta,
        showtimeId.isAcceptableOrUnknown(data['showtime_id']!, _showtimeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_showtimeIdMeta);
    }
    if (data.containsKey('row')) {
      context.handle(
        _rowMeta,
        row.isAcceptableOrUnknown(data['row']!, _rowMeta),
      );
    } else if (isInserting) {
      context.missing(_rowMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeatsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeatsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      showtimeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}showtime_id'],
      )!,
      row: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}row'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price'],
      )!,
    );
  }

  @override
  $SeatsTableTable createAlias(String alias) {
    return $SeatsTableTable(attachedDatabase, alias);
  }
}

class SeatsTableData extends DataClass implements Insertable<SeatsTableData> {
  final String id;
  final String showtimeId;
  final String row;
  final int number;
  final int price;
  const SeatsTableData({
    required this.id,
    required this.showtimeId,
    required this.row,
    required this.number,
    required this.price,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['showtime_id'] = Variable<String>(showtimeId);
    map['row'] = Variable<String>(row);
    map['number'] = Variable<int>(number);
    map['price'] = Variable<int>(price);
    return map;
  }

  SeatsTableCompanion toCompanion(bool nullToAbsent) {
    return SeatsTableCompanion(
      id: Value(id),
      showtimeId: Value(showtimeId),
      row: Value(row),
      number: Value(number),
      price: Value(price),
    );
  }

  factory SeatsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeatsTableData(
      id: serializer.fromJson<String>(json['id']),
      showtimeId: serializer.fromJson<String>(json['showtimeId']),
      row: serializer.fromJson<String>(json['row']),
      number: serializer.fromJson<int>(json['number']),
      price: serializer.fromJson<int>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'showtimeId': serializer.toJson<String>(showtimeId),
      'row': serializer.toJson<String>(row),
      'number': serializer.toJson<int>(number),
      'price': serializer.toJson<int>(price),
    };
  }

  SeatsTableData copyWith({
    String? id,
    String? showtimeId,
    String? row,
    int? number,
    int? price,
  }) => SeatsTableData(
    id: id ?? this.id,
    showtimeId: showtimeId ?? this.showtimeId,
    row: row ?? this.row,
    number: number ?? this.number,
    price: price ?? this.price,
  );
  SeatsTableData copyWithCompanion(SeatsTableCompanion data) {
    return SeatsTableData(
      id: data.id.present ? data.id.value : this.id,
      showtimeId: data.showtimeId.present
          ? data.showtimeId.value
          : this.showtimeId,
      row: data.row.present ? data.row.value : this.row,
      number: data.number.present ? data.number.value : this.number,
      price: data.price.present ? data.price.value : this.price,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeatsTableData(')
          ..write('id: $id, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('row: $row, ')
          ..write('number: $number, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, showtimeId, row, number, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeatsTableData &&
          other.id == this.id &&
          other.showtimeId == this.showtimeId &&
          other.row == this.row &&
          other.number == this.number &&
          other.price == this.price);
}

class SeatsTableCompanion extends UpdateCompanion<SeatsTableData> {
  final Value<String> id;
  final Value<String> showtimeId;
  final Value<String> row;
  final Value<int> number;
  final Value<int> price;
  final Value<int> rowid;
  const SeatsTableCompanion({
    this.id = const Value.absent(),
    this.showtimeId = const Value.absent(),
    this.row = const Value.absent(),
    this.number = const Value.absent(),
    this.price = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SeatsTableCompanion.insert({
    required String id,
    required String showtimeId,
    required String row,
    required int number,
    required int price,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       showtimeId = Value(showtimeId),
       row = Value(row),
       number = Value(number),
       price = Value(price);
  static Insertable<SeatsTableData> custom({
    Expression<String>? id,
    Expression<String>? showtimeId,
    Expression<String>? row,
    Expression<int>? number,
    Expression<int>? price,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (showtimeId != null) 'showtime_id': showtimeId,
      if (row != null) 'row': row,
      if (number != null) 'number': number,
      if (price != null) 'price': price,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SeatsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? showtimeId,
    Value<String>? row,
    Value<int>? number,
    Value<int>? price,
    Value<int>? rowid,
  }) {
    return SeatsTableCompanion(
      id: id ?? this.id,
      showtimeId: showtimeId ?? this.showtimeId,
      row: row ?? this.row,
      number: number ?? this.number,
      price: price ?? this.price,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (showtimeId.present) {
      map['showtime_id'] = Variable<String>(showtimeId.value);
    }
    if (row.present) {
      map['row'] = Variable<String>(row.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeatsTableCompanion(')
          ..write('id: $id, ')
          ..write('showtimeId: $showtimeId, ')
          ..write('row: $row, ')
          ..write('number: $number, ')
          ..write('price: $price, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BookingsTableTable bookingsTable = $BookingsTableTable(this);
  late final $SeatLocksTableTable seatLocksTable = $SeatLocksTableTable(this);
  late final $TicketsTableTable ticketsTable = $TicketsTableTable(this);
  late final $SeatsTableTable seatsTable = $SeatsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    bookingsTable,
    seatLocksTable,
    ticketsTable,
    seatsTable,
  ];
}

typedef $$BookingsTableTableCreateCompanionBuilder =
    BookingsTableCompanion Function({
      required String bookingId,
      required String showtimeId,
      required int movieId,
      required int totalPrice,
      required DateTime createdAt,
      Value<DateTime?> issuedAt,
      Value<String> status,
      Value<int> rowid,
    });
typedef $$BookingsTableTableUpdateCompanionBuilder =
    BookingsTableCompanion Function({
      Value<String> bookingId,
      Value<String> showtimeId,
      Value<int> movieId,
      Value<int> totalPrice,
      Value<DateTime> createdAt,
      Value<DateTime?> issuedAt,
      Value<String> status,
      Value<int> rowid,
    });

class $$BookingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $BookingsTableTable> {
  $$BookingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get bookingId => $composableBuilder(
    column: $table.bookingId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
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

  ColumnFilters<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BookingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BookingsTableTable> {
  $$BookingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get bookingId => $composableBuilder(
    column: $table.bookingId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
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

  ColumnOrderings<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BookingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookingsTableTable> {
  $$BookingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get bookingId =>
      $composableBuilder(column: $table.bookingId, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<int> get totalPrice => $composableBuilder(
    column: $table.totalPrice,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get issuedAt =>
      $composableBuilder(column: $table.issuedAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$BookingsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BookingsTableTable,
          BookingsTableData,
          $$BookingsTableTableFilterComposer,
          $$BookingsTableTableOrderingComposer,
          $$BookingsTableTableAnnotationComposer,
          $$BookingsTableTableCreateCompanionBuilder,
          $$BookingsTableTableUpdateCompanionBuilder,
          (
            BookingsTableData,
            BaseReferences<
              _$AppDatabase,
              $BookingsTableTable,
              BookingsTableData
            >,
          ),
          BookingsTableData,
          PrefetchHooks Function()
        > {
  $$BookingsTableTableTableManager(_$AppDatabase db, $BookingsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> bookingId = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<int> totalPrice = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> issuedAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BookingsTableCompanion(
                bookingId: bookingId,
                showtimeId: showtimeId,
                movieId: movieId,
                totalPrice: totalPrice,
                createdAt: createdAt,
                issuedAt: issuedAt,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String bookingId,
                required String showtimeId,
                required int movieId,
                required int totalPrice,
                required DateTime createdAt,
                Value<DateTime?> issuedAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BookingsTableCompanion.insert(
                bookingId: bookingId,
                showtimeId: showtimeId,
                movieId: movieId,
                totalPrice: totalPrice,
                createdAt: createdAt,
                issuedAt: issuedAt,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BookingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BookingsTableTable,
      BookingsTableData,
      $$BookingsTableTableFilterComposer,
      $$BookingsTableTableOrderingComposer,
      $$BookingsTableTableAnnotationComposer,
      $$BookingsTableTableCreateCompanionBuilder,
      $$BookingsTableTableUpdateCompanionBuilder,
      (
        BookingsTableData,
        BaseReferences<_$AppDatabase, $BookingsTableTable, BookingsTableData>,
      ),
      BookingsTableData,
      PrefetchHooks Function()
    >;
typedef $$SeatLocksTableTableCreateCompanionBuilder =
    SeatLocksTableCompanion Function({
      required String seatId,
      required String showtimeId,
      required DateTime lockedAt,
      Value<int> rowid,
    });
typedef $$SeatLocksTableTableUpdateCompanionBuilder =
    SeatLocksTableCompanion Function({
      Value<String> seatId,
      Value<String> showtimeId,
      Value<DateTime> lockedAt,
      Value<int> rowid,
    });

class $$SeatLocksTableTableFilterComposer
    extends Composer<_$AppDatabase, $SeatLocksTableTable> {
  $$SeatLocksTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get seatId => $composableBuilder(
    column: $table.seatId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lockedAt => $composableBuilder(
    column: $table.lockedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SeatLocksTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SeatLocksTableTable> {
  $$SeatLocksTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get seatId => $composableBuilder(
    column: $table.seatId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lockedAt => $composableBuilder(
    column: $table.lockedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SeatLocksTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SeatLocksTableTable> {
  $$SeatLocksTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get seatId =>
      $composableBuilder(column: $table.seatId, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lockedAt =>
      $composableBuilder(column: $table.lockedAt, builder: (column) => column);
}

class $$SeatLocksTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SeatLocksTableTable,
          SeatLocksTableData,
          $$SeatLocksTableTableFilterComposer,
          $$SeatLocksTableTableOrderingComposer,
          $$SeatLocksTableTableAnnotationComposer,
          $$SeatLocksTableTableCreateCompanionBuilder,
          $$SeatLocksTableTableUpdateCompanionBuilder,
          (
            SeatLocksTableData,
            BaseReferences<
              _$AppDatabase,
              $SeatLocksTableTable,
              SeatLocksTableData
            >,
          ),
          SeatLocksTableData,
          PrefetchHooks Function()
        > {
  $$SeatLocksTableTableTableManager(
    _$AppDatabase db,
    $SeatLocksTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeatLocksTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeatLocksTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeatLocksTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> seatId = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<DateTime> lockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SeatLocksTableCompanion(
                seatId: seatId,
                showtimeId: showtimeId,
                lockedAt: lockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String seatId,
                required String showtimeId,
                required DateTime lockedAt,
                Value<int> rowid = const Value.absent(),
              }) => SeatLocksTableCompanion.insert(
                seatId: seatId,
                showtimeId: showtimeId,
                lockedAt: lockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SeatLocksTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SeatLocksTableTable,
      SeatLocksTableData,
      $$SeatLocksTableTableFilterComposer,
      $$SeatLocksTableTableOrderingComposer,
      $$SeatLocksTableTableAnnotationComposer,
      $$SeatLocksTableTableCreateCompanionBuilder,
      $$SeatLocksTableTableUpdateCompanionBuilder,
      (
        SeatLocksTableData,
        BaseReferences<_$AppDatabase, $SeatLocksTableTable, SeatLocksTableData>,
      ),
      SeatLocksTableData,
      PrefetchHooks Function()
    >;
typedef $$TicketsTableTableCreateCompanionBuilder =
    TicketsTableCompanion Function({
      required String ticketId,
      required String bookingId,
      required String seatId,
      required int price,
      required DateTime issuedAt,
      Value<int> rowid,
    });
typedef $$TicketsTableTableUpdateCompanionBuilder =
    TicketsTableCompanion Function({
      Value<String> ticketId,
      Value<String> bookingId,
      Value<String> seatId,
      Value<int> price,
      Value<DateTime> issuedAt,
      Value<int> rowid,
    });

class $$TicketsTableTableFilterComposer
    extends Composer<_$AppDatabase, $TicketsTableTable> {
  $$TicketsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get ticketId => $composableBuilder(
    column: $table.ticketId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookingId => $composableBuilder(
    column: $table.bookingId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seatId => $composableBuilder(
    column: $table.seatId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TicketsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TicketsTableTable> {
  $$TicketsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get ticketId => $composableBuilder(
    column: $table.ticketId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookingId => $composableBuilder(
    column: $table.bookingId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seatId => $composableBuilder(
    column: $table.seatId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get issuedAt => $composableBuilder(
    column: $table.issuedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TicketsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TicketsTableTable> {
  $$TicketsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get ticketId =>
      $composableBuilder(column: $table.ticketId, builder: (column) => column);

  GeneratedColumn<String> get bookingId =>
      $composableBuilder(column: $table.bookingId, builder: (column) => column);

  GeneratedColumn<String> get seatId =>
      $composableBuilder(column: $table.seatId, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<DateTime> get issuedAt =>
      $composableBuilder(column: $table.issuedAt, builder: (column) => column);
}

class $$TicketsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TicketsTableTable,
          TicketsTableData,
          $$TicketsTableTableFilterComposer,
          $$TicketsTableTableOrderingComposer,
          $$TicketsTableTableAnnotationComposer,
          $$TicketsTableTableCreateCompanionBuilder,
          $$TicketsTableTableUpdateCompanionBuilder,
          (
            TicketsTableData,
            BaseReferences<_$AppDatabase, $TicketsTableTable, TicketsTableData>,
          ),
          TicketsTableData,
          PrefetchHooks Function()
        > {
  $$TicketsTableTableTableManager(_$AppDatabase db, $TicketsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TicketsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TicketsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TicketsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> ticketId = const Value.absent(),
                Value<String> bookingId = const Value.absent(),
                Value<String> seatId = const Value.absent(),
                Value<int> price = const Value.absent(),
                Value<DateTime> issuedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TicketsTableCompanion(
                ticketId: ticketId,
                bookingId: bookingId,
                seatId: seatId,
                price: price,
                issuedAt: issuedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ticketId,
                required String bookingId,
                required String seatId,
                required int price,
                required DateTime issuedAt,
                Value<int> rowid = const Value.absent(),
              }) => TicketsTableCompanion.insert(
                ticketId: ticketId,
                bookingId: bookingId,
                seatId: seatId,
                price: price,
                issuedAt: issuedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TicketsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TicketsTableTable,
      TicketsTableData,
      $$TicketsTableTableFilterComposer,
      $$TicketsTableTableOrderingComposer,
      $$TicketsTableTableAnnotationComposer,
      $$TicketsTableTableCreateCompanionBuilder,
      $$TicketsTableTableUpdateCompanionBuilder,
      (
        TicketsTableData,
        BaseReferences<_$AppDatabase, $TicketsTableTable, TicketsTableData>,
      ),
      TicketsTableData,
      PrefetchHooks Function()
    >;
typedef $$SeatsTableTableCreateCompanionBuilder =
    SeatsTableCompanion Function({
      required String id,
      required String showtimeId,
      required String row,
      required int number,
      required int price,
      Value<int> rowid,
    });
typedef $$SeatsTableTableUpdateCompanionBuilder =
    SeatsTableCompanion Function({
      Value<String> id,
      Value<String> showtimeId,
      Value<String> row,
      Value<int> number,
      Value<int> price,
      Value<int> rowid,
    });

class $$SeatsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SeatsTableTable> {
  $$SeatsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get row => $composableBuilder(
    column: $table.row,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SeatsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SeatsTableTable> {
  $$SeatsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get row => $composableBuilder(
    column: $table.row,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SeatsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SeatsTableTable> {
  $$SeatsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get showtimeId => $composableBuilder(
    column: $table.showtimeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get row =>
      $composableBuilder(column: $table.row, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);
}

class $$SeatsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SeatsTableTable,
          SeatsTableData,
          $$SeatsTableTableFilterComposer,
          $$SeatsTableTableOrderingComposer,
          $$SeatsTableTableAnnotationComposer,
          $$SeatsTableTableCreateCompanionBuilder,
          $$SeatsTableTableUpdateCompanionBuilder,
          (
            SeatsTableData,
            BaseReferences<_$AppDatabase, $SeatsTableTable, SeatsTableData>,
          ),
          SeatsTableData,
          PrefetchHooks Function()
        > {
  $$SeatsTableTableTableManager(_$AppDatabase db, $SeatsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeatsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeatsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeatsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> showtimeId = const Value.absent(),
                Value<String> row = const Value.absent(),
                Value<int> number = const Value.absent(),
                Value<int> price = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SeatsTableCompanion(
                id: id,
                showtimeId: showtimeId,
                row: row,
                number: number,
                price: price,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String showtimeId,
                required String row,
                required int number,
                required int price,
                Value<int> rowid = const Value.absent(),
              }) => SeatsTableCompanion.insert(
                id: id,
                showtimeId: showtimeId,
                row: row,
                number: number,
                price: price,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SeatsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SeatsTableTable,
      SeatsTableData,
      $$SeatsTableTableFilterComposer,
      $$SeatsTableTableOrderingComposer,
      $$SeatsTableTableAnnotationComposer,
      $$SeatsTableTableCreateCompanionBuilder,
      $$SeatsTableTableUpdateCompanionBuilder,
      (
        SeatsTableData,
        BaseReferences<_$AppDatabase, $SeatsTableTable, SeatsTableData>,
      ),
      SeatsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BookingsTableTableTableManager get bookingsTable =>
      $$BookingsTableTableTableManager(_db, _db.bookingsTable);
  $$SeatLocksTableTableTableManager get seatLocksTable =>
      $$SeatLocksTableTableTableManager(_db, _db.seatLocksTable);
  $$TicketsTableTableTableManager get ticketsTable =>
      $$TicketsTableTableTableManager(_db, _db.ticketsTable);
  $$SeatsTableTableTableManager get seatsTable =>
      $$SeatsTableTableTableManager(_db, _db.seatsTable);
}
