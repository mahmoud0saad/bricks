// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Select Unit`
  String get select_unit {
    return Intl.message('Select Unit', name: 'select_unit', desc: '', args: []);
  }

  /// `Negotiable`
  String get negotiable {
    return Intl.message('Negotiable', name: 'negotiable', desc: '', args: []);
  }

  /// `Price Type`
  String get price_type {
    return Intl.message('Price Type', name: 'price_type', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `My Store`
  String get my_store {
    return Intl.message('My Store', name: 'my_store', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Download Invoice`
  String get downlaod_invoice {
    return Intl.message(
      'Download Invoice',
      name: 'downlaod_invoice',
      desc: '',
      args: [],
    );
  }

  /// `Farm Receipts are Empty`
  String get farm_receipts_empty_title {
    return Intl.message(
      'Farm Receipts are Empty',
      name: 'farm_receipts_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Please create an invoice before generating the receipt.`
  String get farm_receipts_empty_desc {
    return Intl.message(
      'Please create an invoice before generating the receipt.',
      name: 'farm_receipts_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `No Orders`
  String get order_empty_title {
    return Intl.message(
      'No Orders',
      name: 'order_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `It seems that the order cart is empty.`
  String get order_empty_desc {
    return Intl.message(
      'It seems that the order cart is empty.',
      name: 'order_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `Supplies are Empty`
  String get supply_empty_title {
    return Intl.message(
      'Supplies are Empty',
      name: 'supply_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `It seems that you haven't added any supplies, create now.`
  String get supply_empty_desc {
    return Intl.message(
      'It seems that you haven\'t added any supplies, create now.',
      name: 'supply_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `There are no orders currently.`
  String get offer_empty_desc {
    return Intl.message(
      'There are no orders currently.',
      name: 'offer_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `No requests found`
  String get join_empty_title {
    return Intl.message(
      'No requests found',
      name: 'join_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No reviews available at the moment.`
  String get reviews_empty_desc {
    return Intl.message(
      'No reviews available at the moment.',
      name: 'reviews_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `No Ads`
  String get ads_empty_title {
    return Intl.message('No Ads', name: 'ads_empty_title', desc: '', args: []);
  }

  /// `Advertisements are not available.`
  String get ads_empty_desc {
    return Intl.message(
      'Advertisements are not available.',
      name: 'ads_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `No markets available.`
  String get markets_empty_desc {
    return Intl.message(
      'No markets available.',
      name: 'markets_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `There are no prices for today.`
  String get price_list_empty_desc {
    return Intl.message(
      'There are no prices for today.',
      name: 'price_list_empty_desc',
      desc: '',
      args: [],
    );
  }

  /// `No Invoices Available`
  String get invoices_empty_title {
    return Intl.message(
      'No Invoices Available',
      name: 'invoices_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Sales Available`
  String get sales_empty_title {
    return Intl.message(
      'No Sales Available',
      name: 'sales_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Posts Available`
  String get posts_empty_title {
    return Intl.message(
      'No Posts Available',
      name: 'posts_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Transactions Available`
  String get receipts_empty_title {
    return Intl.message(
      'No Transactions Available',
      name: 'receipts_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No News Available`
  String get news_empty_title {
    return Intl.message(
      'No News Available',
      name: 'news_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Stories Available`
  String get stories_empty_title {
    return Intl.message(
      'No Stories Available',
      name: 'stories_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Returns Available`
  String get returns_empty_title {
    return Intl.message(
      'No Returns Available',
      name: 'returns_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Buyers on this Date`
  String get buyers_empty_title {
    return Intl.message(
      'No Buyers on this Date',
      name: 'buyers_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `The Buyer has No Transactions on this Date`
  String get transactions_empty_title {
    return Intl.message(
      'The Buyer has No Transactions on this Date',
      name: 'transactions_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Invitations Available`
  String get invitations_empty_title {
    return Intl.message(
      'No Invitations Available',
      name: 'invitations_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Employees Available`
  String get employee_empty_title {
    return Intl.message(
      'No Employees Available',
      name: 'employee_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Roles Available`
  String get roles_empty_title {
    return Intl.message(
      'No Roles Available',
      name: 'roles_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Return Requests Available`
  String get returnRequests_empty_title {
    return Intl.message(
      'No Return Requests Available',
      name: 'returnRequests_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `No Grades Available`
  String get grades_empty_title {
    return Intl.message(
      'No Grades Available',
      name: 'grades_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `no cities available`
  String get cities_empty_title {
    return Intl.message(
      'no cities available',
      name: 'cities_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `no unit types available`
  String get unitTypes_empty_title {
    return Intl.message(
      'no unit types available',
      name: 'unitTypes_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Off`
  String get off {
    return Intl.message('Off', name: 'off', desc: '', args: []);
  }

  /// `SAR`
  String get currency {
    return Intl.message('SAR', name: 'currency', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `filtering`
  String get filtering {
    return Intl.message('filtering', name: 'filtering', desc: '', args: []);
  }

  /// `reset`
  String get reset {
    return Intl.message('reset', name: 'reset', desc: '', args: []);
  }

  /// `From Date`
  String get from_date {
    return Intl.message('From Date', name: 'from_date', desc: '', args: []);
  }

  /// `To Date`
  String get to_date {
    return Intl.message('To Date', name: 'to_date', desc: '', args: []);
  }

  /// `The selected file size must be less than 50 MB`
  String get file_size_must_be_less_than_50_mg {
    return Intl.message(
      'The selected file size must be less than 50 MB',
      name: 'file_size_must_be_less_than_50_mg',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get no_data_found {
    return Intl.message(
      'No Data Found',
      name: 'no_data_found',
      desc: '',
      args: [],
    );
  }

  /// `few seconds ago`
  String get few_seconds {
    return Intl.message(
      'few seconds ago',
      name: 'few_seconds',
      desc: '',
      args: [],
    );
  }

  /// `ago`
  String get ago {
    return Intl.message('ago', name: 'ago', desc: '', args: []);
  }

  /// ` minute ago`
  String get minute_ago {
    return Intl.message(' minute ago', name: 'minute_ago', desc: '', args: []);
  }

  /// `hours ago`
  String get hours_ago {
    return Intl.message('hours ago', name: 'hours_ago', desc: '', args: []);
  }

  /// `day`
  String get day {
    return Intl.message('day', name: 'day', desc: '', args: []);
  }

  /// `No Video Selected`
  String get no_video_selected {
    return Intl.message(
      'No Video Selected',
      name: 'no_video_selected',
      desc: '',
      args: [],
    );
  }

  /// `The selected file size must be less than 5 MB`
  String get file_size_must_be_less_than_5_mg {
    return Intl.message(
      'The selected file size must be less than 5 MB',
      name: 'file_size_must_be_less_than_5_mg',
      desc: '',
      args: [],
    );
  }

  /// `Choose the image`
  String get choose_image {
    return Intl.message(
      'Choose the image',
      name: 'choose_image',
      desc: '',
      args: [],
    );
  }

  /// `Invalid price`
  String get invalidPrice {
    return Intl.message(
      'Invalid price',
      name: 'invalidPrice',
      desc: '',
      args: [],
    );
  }

  /// `Price is required.`
  String get price_is_required {
    return Intl.message(
      'Price is required.',
      name: 'price_is_required',
      desc: '',
      args: [],
    );
  }

  /// `field required`
  String get field_required {
    return Intl.message(
      'field required',
      name: 'field_required',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Quantity`
  String get invalidQty {
    return Intl.message(
      'Invalid Quantity',
      name: 'invalidQty',
      desc: '',
      args: [],
    );
  }

  /// `Please add weight`
  String get please_add_weight {
    return Intl.message(
      'Please add weight',
      name: 'please_add_weight',
      desc: '',
      args: [],
    );
  }

  /// `The car plate must contain at least one letter and one number, and they must be in the same language.`
  String get car_validation_error_message {
    return Intl.message(
      'The car plate must contain at least one letter and one number, and they must be in the same language.',
      name: 'car_validation_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the field`
  String get fill_the_field {
    return Intl.message(
      'Please fill in the field',
      name: 'fill_the_field',
      desc: '',
      args: [],
    );
  }

  /// `please enter correct tax rate`
  String get please_enter_correct_tax_rate {
    return Intl.message(
      'please enter correct tax rate',
      name: 'please_enter_correct_tax_rate',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code must be 5 digits long`
  String get postal_code_error_msg {
    return Intl.message(
      'Postal Code must be 5 digits long',
      name: 'postal_code_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Tax number must be 15 digits long, starting and ending with '3'.`
  String get tax_number_error_msg {
    return Intl.message(
      'Tax number must be 15 digits long, starting and ending with \'3\'.',
      name: 'tax_number_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Register must be 10 digits long`
  String get commercial_register_error_msg {
    return Intl.message(
      'Commercial Register must be 10 digits long',
      name: 'commercial_register_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Please enter all fields`
  String get all_required {
    return Intl.message(
      'Please enter all fields',
      name: 'all_required',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters or digits long`
  String get password_must_8_chars_long {
    return Intl.message(
      'Password must be at least 8 characters or digits long',
      name: 'password_must_8_chars_long',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get emailValidationError {
    return Intl.message(
      'Enter a valid email',
      name: 'emailValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the full name (first, middle, and last name)`
  String get enter_full_name {
    return Intl.message(
      'Please enter the full name (first, middle, and last name)',
      name: 'enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get enter_vaild_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'enter_vaild_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure the passwords match`
  String get ensure_passwords_match {
    return Intl.message(
      'Please ensure the passwords match',
      name: 'ensure_passwords_match',
      desc: '',
      args: [],
    );
  }

  /// `The paid amount must be greater than 1`
  String get price_grater_than_one {
    return Intl.message(
      'The paid amount must be greater than 1',
      name: 'price_grater_than_one',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
