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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Add Order`
  String get addOrder {
    return Intl.message(
      'Add Order',
      name: 'addOrder',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `SubOrders`
  String get suborders {
    return Intl.message(
      'SubOrders',
      name: 'suborders',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get myWallet {
    return Intl.message(
      'My Wallet',
      name: 'myWallet',
      desc: '',
      args: [],
    );
  }

  /// `Charge count`
  String get ChargeCount {
    return Intl.message(
      'Charge count',
      name: 'ChargeCount',
      desc: '',
      args: [],
    );
  }

  /// `Last charge`
  String get LastCharge {
    return Intl.message(
      'Last charge',
      name: 'LastCharge',
      desc: '',
      args: [],
    );
  }

  /// `Total donations`
  String get TotalDonations {
    return Intl.message(
      'Total donations',
      name: 'TotalDonations',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get transactionHistory {
    return Intl.message(
      'Transaction History',
      name: 'transactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `SYP`
  String get syp {
    return Intl.message(
      'SYP',
      name: 'syp',
      desc: '',
      args: [],
    );
  }

  /// `Success Stories`
  String get successStories {
    return Intl.message(
      'Success Stories',
      name: 'successStories',
      desc: '',
      args: [],
    );
  }

  /// `Charge`
  String get chargeMyWallet {
    return Intl.message(
      'Charge',
      name: 'chargeMyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Charge amount`
  String get chargeAmount {
    return Intl.message(
      'Charge amount',
      name: 'chargeAmount',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Best place to make the world Better and help the people in need`
  String get bestPlaceToMakeTheWorldBetterAndHelpThe {
    return Intl.message(
      'Best place to make the world Better and help the people in need',
      name: 'bestPlaceToMakeTheWorldBetterAndHelpThe',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to continue`
  String get signInToContinue {
    return Intl.message(
      'Sign in to continue',
      name: 'signInToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Example :  +963 934 641 049`
  String get example963934641049 {
    return Intl.message(
      'Example :  +963 934 641 049',
      name: 'example963934641049',
      desc: '',
      args: [],
    );
  }

  /// `Hi !`
  String get hi {
    return Intl.message(
      'Hi !',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get createANewAccount {
    return Intl.message(
      'Create a new account',
      name: 'createANewAccount',
      desc: '',
      args: [],
    );
  }

  /// `ِAlready have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'ِAlready have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Secret Name`
  String get secretName {
    return Intl.message(
      'Secret Name',
      name: 'secretName',
      desc: '',
      args: [],
    );
  }

  /// `Example: Sami Ahmad Arisha`
  String get exampleSami {
    return Intl.message(
      'Example: Sami Ahmad Arisha',
      name: 'exampleSami',
      desc: '',
      args: [],
    );
  }

  /// `Example: Anonymous`
  String get exampleAnonymous {
    return Intl.message(
      'Example: Anonymous',
      name: 'exampleAnonymous',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive a code?`
  String get didntReceiveACode {
    return Intl.message(
      'Didn\'t receive a code?',
      name: 'didntReceiveACode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `verification code has been sent to your number`
  String get verificationCodeHasBeenSentToYourNumber {
    return Intl.message(
      'verification code has been sent to your number',
      name: 'verificationCodeHasBeenSentToYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `magic_rewards`
  String get magic_rewards {
    return Intl.message(
      'magic_rewards',
      name: 'magic_rewards',
      desc: '',
      args: [],
    );
  }

  /// `Succes Stories`
  String get succesStories {
    return Intl.message(
      'Succes Stories',
      name: 'succesStories',
      desc: '',
      args: [],
    );
  }

  /// `Donations`
  String get donations {
    return Intl.message(
      'Donations',
      name: 'donations',
      desc: '',
      args: [],
    );
  }

  /// `Cases`
  String get openCases {
    return Intl.message(
      'Cases',
      name: 'openCases',
      desc: '',
      args: [],
    );
  }

  /// `Open Heart`
  String get openHeart {
    return Intl.message(
      'Open Heart',
      name: 'openHeart',
      desc: '',
      args: [],
    );
  }

  /// `Remains`
  String get remains {
    return Intl.message(
      'Remains',
      name: 'remains',
      desc: '',
      args: [],
    );
  }

  /// `Of`
  String get offff {
    return Intl.message(
      'Of',
      name: 'offff',
      desc: '',
      args: [],
    );
  }

  /// `Help who is in need`
  String get helpPeopleInNeed {
    return Intl.message(
      'Help who is in need',
      name: 'helpPeopleInNeed',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Case Gallery`
  String get caseGallery {
    return Intl.message(
      'Case Gallery',
      name: 'caseGallery',
      desc: '',
      args: [],
    );
  }

  /// `Updates`
  String get updates {
    return Intl.message(
      'Updates',
      name: 'updates',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get cost {
    return Intl.message(
      'Cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Name Name Name`
  String get nameNameName {
    return Intl.message(
      'Name Name Name',
      name: 'nameNameName',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `1.000 S.P`
  String get oneThousandSp {
    return Intl.message(
      '1.000 S.P',
      name: 'oneThousandSp',
      desc: '',
      args: [],
    );
  }

  /// `Donors`
  String get donors {
    return Intl.message(
      'Donors',
      name: 'donors',
      desc: '',
      args: [],
    );
  }

  /// `850.000 S.P`
  String get eightThousandSp {
    return Intl.message(
      '850.000 S.P',
      name: 'eightThousandSp',
      desc: '',
      args: [],
    );
  }

  /// `Validations`
  String get validations {
    return Intl.message(
      'Validations',
      name: 'validations',
      desc: '',
      args: [],
    );
  }

  /// `X Ray`
  String get xRay {
    return Intl.message(
      'X Ray',
      name: 'xRay',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get readMore {
    return Intl.message(
      'Read more',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Donate`
  String get donate {
    return Intl.message(
      'Donate',
      name: 'donate',
      desc: '',
      args: [],
    );
  }

  /// `Contact Info`
  String get contactInfo {
    return Intl.message(
      'Contact Info',
      name: 'contactInfo',
      desc: '',
      args: [],
    );
  }

  /// `Person Name`
  String get personName {
    return Intl.message(
      'Person Name',
      name: 'personName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Relation`
  String get relation {
    return Intl.message(
      'Relation',
      name: 'relation',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Al Moasa Hospital`
  String get alMoasaHospital {
    return Intl.message(
      'Al Moasa Hospital',
      name: 'alMoasaHospital',
      desc: '',
      args: [],
    );
  }

  /// `Alex Rousseau`
  String get alexRousseau {
    return Intl.message(
      'Alex Rousseau',
      name: 'alexRousseau',
      desc: '',
      args: [],
    );
  }

  /// `Dantelle Rousseau`
  String get dantelleRousseau {
    return Intl.message(
      'Dantelle Rousseau',
      name: 'dantelleRousseau',
      desc: '',
      args: [],
    );
  }

  /// `Mother`
  String get mother {
    return Intl.message(
      'Mother',
      name: 'mother',
      desc: '',
      args: [],
    );
  }

  /// `Damascus - Jaramana - building`
  String get damascusJaramanaBuilding {
    return Intl.message(
      'Damascus - Jaramana - building',
      name: 'damascusJaramanaBuilding',
      desc: '',
      args: [],
    );
  }

  /// `Provider`
  String get provider {
    return Intl.message(
      'Provider',
      name: 'provider',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Case Secret Info`
  String get caseSecretInfo {
    return Intl.message(
      'Case Secret Info',
      name: 'caseSecretInfo',
      desc: '',
      args: [],
    );
  }

  /// `Case donation amount`
  String get caseDonationAmount {
    return Intl.message(
      'Case donation amount',
      name: 'caseDonationAmount',
      desc: '',
      args: [],
    );
  }

  /// `3,500,000 SYP`
  String get threemillionsSyp {
    return Intl.message(
      '3,500,000 SYP',
      name: 'threemillionsSyp',
      desc: '',
      args: [],
    );
  }

  /// `to close the case`
  String get toCloseTheCase {
    return Intl.message(
      'to close the case',
      name: 'toCloseTheCase',
      desc: '',
      args: [],
    );
  }

  /// `Donate for magic_rewards`
  String get donateFormagic_rewards {
    return Intl.message(
      'Donate for magic_rewards',
      name: 'donateFormagic_rewards',
      desc: '',
      args: [],
    );
  }

  /// `Example: 500,000`
  String get example500000 {
    return Intl.message(
      'Example: 500,000',
      name: 'example500000',
      desc: '',
      args: [],
    );
  }

  /// `Can be zero`
  String get canBeZero {
    return Intl.message(
      'Can be zero',
      name: 'canBeZero',
      desc: '',
      args: [],
    );
  }

  /// `Case Validation`
  String get caseValidation {
    return Intl.message(
      'Case Validation',
      name: 'caseValidation',
      desc: '',
      args: [],
    );
  }

  /// `Donald the Duck`
  String get donaldTheDuck {
    return Intl.message(
      'Donald the Duck',
      name: 'donaldTheDuck',
      desc: '',
      args: [],
    );
  }

  /// `X-Ray`
  String get xray {
    return Intl.message(
      'X-Ray',
      name: 'xray',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get request {
    return Intl.message(
      'Request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Sami Sami`
  String get samiSami {
    return Intl.message(
      'Sami Sami',
      name: 'samiSami',
      desc: '',
      args: [],
    );
  }

  /// `20M`
  String get twentymillion {
    return Intl.message(
      '20M',
      name: 'twentymillion',
      desc: '',
      args: [],
    );
  }

  /// `250K`
  String get twohundredk {
    return Intl.message(
      '250K',
      name: 'twohundredk',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Cases`
  String get cases {
    return Intl.message(
      'Cases',
      name: 'cases',
      desc: '',
      args: [],
    );
  }

  /// `Required Field`
  String get requiredField {
    return Intl.message(
      'Required Field',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Email Is Not Valid`
  String get emailIsNotValid {
    return Intl.message(
      'Email Is Not Valid',
      name: 'emailIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Value Is Not Valid`
  String get valueIsNotValid {
    return Intl.message(
      'Value Is Not Valid',
      name: 'valueIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Is Not Valid`
  String get mobileIsNotValid {
    return Intl.message(
      'Mobile Is Not Valid',
      name: 'mobileIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Ghassan`
  String get ghassan {
    return Intl.message(
      'Ghassan',
      name: 'ghassan',
      desc: '',
      args: [],
    );
  }

  /// `Numbers Only`
  String get numbersOnly {
    return Intl.message(
      'Numbers Only',
      name: 'numbersOnly',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete account?`
  String get areYouSureToDeleteAccount {
    return Intl.message(
      'Are you sure to delete account?',
      name: 'areYouSureToDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `No more Data`
  String get noMoreData {
    return Intl.message(
      'No more Data',
      name: 'noMoreData',
      desc: '',
      args: [],
    );
  }

  /// `release to load more`
  String get releaseToLoadMore {
    return Intl.message(
      'release to load more',
      name: 'releaseToLoadMore',
      desc: '',
      args: [],
    );
  }

  /// `Load Failed!`
  String get loadFailed {
    return Intl.message(
      'Load Failed!',
      name: 'loadFailed',
      desc: '',
      args: [],
    );
  }

  /// `pull up load`
  String get pullUpLoad {
    return Intl.message(
      'pull up load',
      name: 'pullUpLoad',
      desc: '',
      args: [],
    );
  }

  /// `Request Was Sent Successfully`
  String get requestWasSentSuccessfully {
    return Intl.message(
      'Request Was Sent Successfully',
      name: 'requestWasSentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Donated Successfully`
  String get donatedSuccessfully {
    return Intl.message(
      'Donated Successfully',
      name: 'donatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Edit My Profile`
  String get editMyProfile {
    return Intl.message(
      'Edit My Profile',
      name: 'editMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Add a Photo`
  String get addAPhoto {
    return Intl.message(
      'Add a Photo',
      name: 'addAPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Date Of Birth`
  String get dateOfBirth {
    return Intl.message(
      'Date Of Birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `edit profile photo`
  String get editProfilePhoto {
    return Intl.message(
      'edit profile photo',
      name: 'editProfilePhoto',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newwww {
    return Intl.message(
      'New',
      name: 'newwww',
      desc: '',
      args: [],
    );
  }

  /// `Earlier`
  String get earlier {
    return Intl.message(
      'Earlier',
      name: 'earlier',
      desc: '',
      args: [],
    );
  }

  /// `New Version is Available.Click Below to Update`
  String get newVersionIsAvailable {
    return Intl.message(
      'New Version is Available.Click Below to Update',
      name: 'newVersionIsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Google Play`
  String get googlePlay {
    return Intl.message(
      'Google Play',
      name: 'googlePlay',
      desc: '',
      args: [],
    );
  }

  /// `Direct link`
  String get directLink {
    return Intl.message(
      'Direct link',
      name: 'directLink',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `An Error Occured`
  String get anErrorOccured {
    return Intl.message(
      'An Error Occured',
      name: 'anErrorOccured',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `An error occured, please try again later`
  String get anErrorOccuredPlease {
    return Intl.message(
      'An error occured, please try again later',
      name: 'anErrorOccuredPlease',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get showLess {
    return Intl.message(
      'Show less',
      name: 'showLess',
      desc: '',
      args: [],
    );
  }

  /// `S.P`
  String get spound {
    return Intl.message(
      'S.P',
      name: 'spound',
      desc: '',
      args: [],
    );
  }

  /// `SignUp Succeed Please Login`
  String get signupSucceedPleaseLogin {
    return Intl.message(
      'SignUp Succeed Please Login',
      name: 'signupSucceedPleaseLogin',
      desc: '',
      args: [],
    );
  }

  /// `More Details`
  String get moreDetails {
    return Intl.message(
      'More Details',
      name: 'moreDetails',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `I have reviewed and agree to magic_rewards`
  String get youAgreeWith {
    return Intl.message(
      'I have reviewed and agree to magic_rewards',
      name: 'youAgreeWith',
      desc: '',
      args: [],
    );
  }

  /// `Accept Privacy Policy First`
  String get acceptPrivacyPolicyFirst {
    return Intl.message(
      'Accept Privacy Policy First',
      name: 'acceptPrivacyPolicyFirst',
      desc: '',
      args: [],
    );
  }

  /// `Nothing To Show Here`
  String get nothingToShowHere {
    return Intl.message(
      'Nothing To Show Here',
      name: 'nothingToShowHere',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications`
  String get noNotifications {
    return Intl.message(
      'No Notifications',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to sign out?`
  String get areYouSureToSignOut {
    return Intl.message(
      'Are you sure to sign out?',
      name: 'areYouSureToSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Your profile data updated`
  String get yourProfileDataUpdated {
    return Intl.message(
      'Your profile data updated',
      name: 'yourProfileDataUpdated',
      desc: '',
      args: [],
    );
  }

  /// `No Donors`
  String get noDonors {
    return Intl.message(
      'No Donors',
      name: 'noDonors',
      desc: '',
      args: [],
    );
  }

  /// `No Cases`
  String get noCases {
    return Intl.message(
      'No Cases',
      name: 'noCases',
      desc: '',
      args: [],
    );
  }

  /// `No Success Stories`
  String get noSuccessStories {
    return Intl.message(
      'No Success Stories',
      name: 'noSuccessStories',
      desc: '',
      args: [],
    );
  }

  /// `No Transactions`
  String get noTransactions {
    return Intl.message(
      'No Transactions',
      name: 'noTransactions',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Remaining is zero`
  String get remainingIsZero {
    return Intl.message(
      'Remaining is zero',
      name: 'remainingIsZero',
      desc: '',
      args: [],
    );
  }

  /// `Example: `
  String get example {
    return Intl.message(
      'Example: ',
      name: 'example',
      desc: '',
      args: [],
    );
  }

  /// `Exit the application?`
  String get exitTheApplication {
    return Intl.message(
      'Exit the application?',
      name: 'exitTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `Code is not valid`
  String get codeIsNotValid {
    return Intl.message(
      'Code is not valid',
      name: 'codeIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Charge Now`
  String get chargeNow {
    return Intl.message(
      'Charge Now',
      name: 'chargeNow',
      desc: '',
      args: [],
    );
  }

  /// `Your Wallet is Empty`
  String get yourWalletIsEmpty {
    return Intl.message(
      'Your Wallet is Empty',
      name: 'yourWalletIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Charge here`
  String get chargeHere {
    return Intl.message(
      'Charge here',
      name: 'chargeHere',
      desc: '',
      args: [],
    );
  }

  /// `Your wallet is empty`
  String get errorYourWalletIsEmpty {
    return Intl.message(
      'Your wallet is empty',
      name: 'errorYourWalletIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to download image?`
  String get doYouWantToDownloadImage {
    return Intl.message(
      'Do you want to download image?',
      name: 'doYouWantToDownloadImage',
      desc: '',
      args: [],
    );
  }

  /// `Image downloaded successfully`
  String get imageDownloadedSuccessfully {
    return Intl.message(
      'Image downloaded successfully',
      name: 'imageDownloadedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `privacy policy new`
  String get privacyPolicyNew {
    return Intl.message(
      'privacy policy new',
      name: 'privacyPolicyNew',
      desc: '',
      args: [],
    );
  }

  /// `I Agree with the Privacy Policy`
  String get iAgreeWithThePrivacyPolicy {
    return Intl.message(
      'I Agree with the Privacy Policy',
      name: 'iAgreeWithThePrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `I Agree with the Privacy Policy`
  String get privacyPolicyLastOne {
    return Intl.message(
      'I Agree with the Privacy Policy',
      name: 'privacyPolicyLastOne',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `My Favorite Cases`
  String get myCases {
    return Intl.message(
      'My Favorite Cases',
      name: 'myCases',
      desc: '',
      args: [],
    );
  }

  /// `No Faqs`
  String get noFaqs {
    return Intl.message(
      'No Faqs',
      name: 'noFaqs',
      desc: '',
      args: [],
    );
  }

  /// `Redeem`
  String get redeem {
    return Intl.message(
      'Redeem',
      name: 'redeem',
      desc: '',
      args: [],
    );
  }

  /// `Wrong verification Code`
  String get wrongVerificationCode {
    return Intl.message(
      'Wrong verification Code',
      name: 'wrongVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Email Verified Successfully`
  String get emailVerifiedSuccessfully {
    return Intl.message(
      'Email Verified Successfully',
      name: 'emailVerifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `must be at least {count}`
  String mustBeAtLeastCount(Object count) {
    return Intl.message(
      'must be at least $count',
      name: 'mustBeAtLeastCount',
      desc: '',
      args: [count],
    );
  }

  /// `Live Offers`
  String get liveOffers {
    return Intl.message(
      'Live Offers',
      name: 'liveOffers',
      desc: '',
      args: [],
    );
  }

  /// `UnExpected Error`
  String get unexpectedError {
    return Intl.message(
      'UnExpected Error',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Force Update`
  String get forceUpdate {
    return Intl.message(
      'Force Update',
      name: 'forceUpdate',
      desc: '',
      args: [],
    );
  }

  /// `App Under Maintenance`
  String get appUnderMaintenance {
    return Intl.message(
      'App Under Maintenance',
      name: 'appUnderMaintenance',
      desc: '',
      args: [],
    );
  }

  /// `Session Expired`
  String get sessionExpired {
    return Intl.message(
      'Session Expired',
      name: 'sessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Parse Error`
  String get parseError {
    return Intl.message(
      'Parse Error',
      name: 'parseError',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightMode {
    return Intl.message(
      'Light Mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Secondary Email`
  String get secondaryEmail {
    return Intl.message(
      'Secondary Email',
      name: 'secondaryEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `must be at least {count}`
  String minLengthValidator(Object count) {
    return Intl.message(
      'must be at least $count',
      name: 'minLengthValidator',
      desc: '',
      args: [count],
    );
  }

  /// `Invalid phone number`
  String get invalidPhoneNumber {
    return Intl.message(
      'Invalid phone number',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Url Is not Valid`
  String get urlIsNotValid {
    return Intl.message(
      'Url Is not Valid',
      name: 'urlIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Value Must Be Positive`
  String get valueMustBePositive {
    return Intl.message(
      'Value Must Be Positive',
      name: 'valueMustBePositive',
      desc: '',
      args: [],
    );
  }

  /// `Password shouldn't have spaces`
  String get shouldntHaveSpaces {
    return Intl.message(
      'Password shouldn\'t have spaces',
      name: 'shouldntHaveSpaces',
      desc: '',
      args: [],
    );
  }

  /// `This field doesn't match the new password`
  String get thisFieldDoesntMatchTheNewPassword {
    return Intl.message(
      'This field doesn\'t match the new password',
      name: 'thisFieldDoesntMatchTheNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get loggedInSuccessfully {
    return Intl.message(
      'Logged in successfully',
      name: 'loggedInSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Signed up scuccessfully`
  String get signedUpScuccessfully {
    return Intl.message(
      'Signed up scuccessfully',
      name: 'signedUpScuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get leaderBoard {
    return Intl.message(
      'Leaderboard',
      name: 'leaderBoard',
      desc: '',
      args: [],
    );
  }

  /// `Top Users`
  String get topUsers {
    return Intl.message(
      'Top Users',
      name: 'topUsers',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Providers`
  String get providers {
    return Intl.message(
      'Providers',
      name: 'providers',
      desc: '',
      args: [],
    );
  }

  /// `All Time`
  String get allTime {
    return Intl.message(
      'All Time',
      name: 'allTime',
      desc: '',
      args: [],
    );
  }

  /// `Last 15 days`
  String get last15Days {
    return Intl.message(
      'Last 15 days',
      name: 'last15Days',
      desc: '',
      args: [],
    );
  }

  /// `Payeer ID`
  String get payeerId {
    return Intl.message(
      'Payeer ID',
      name: 'payeerId',
      desc: '',
      args: [],
    );
  }

  /// `points`
  String get points {
    return Intl.message(
      'points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `pts`
  String get pts {
    return Intl.message(
      'pts',
      name: 'pts',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Total Earn`
  String get totalEarn {
    return Intl.message(
      'Total Earn',
      name: 'totalEarn',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get terms {
    return Intl.message(
      'Terms',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `My Rewards`
  String get myRewards {
    return Intl.message(
      'My Rewards',
      name: 'myRewards',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Payout`
  String get minimumPayout {
    return Intl.message(
      'Minimum Payout',
      name: 'minimumPayout',
      desc: '',
      args: [],
    );
  }

  /// `You Can Redeem!`
  String get youCanRedeem {
    return Intl.message(
      'You Can Redeem!',
      name: 'youCanRedeem',
      desc: '',
      args: [],
    );
  }

  /// `Id`
  String get id {
    return Intl.message(
      'Id',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Payeer Id`
  String get enterYourPayeerId {
    return Intl.message(
      'Enter Your Payeer Id',
      name: 'enterYourPayeerId',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been sent successfully`
  String get yourRequestSuccess {
    return Intl.message(
      'Your request has been sent successfully',
      name: 'yourRequestSuccess',
      desc: '',
      args: [],
    );
  }

  /// `No Data to Show`
  String get noDataToShow {
    return Intl.message(
      'No Data to Show',
      name: 'noDataToShow',
      desc: '',
      args: [],
    );
  }

  /// `Welome`
  String get welome {
    return Intl.message(
      'Welome',
      name: 'welome',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Notifications Email`
  String get notificationsEmail {
    return Intl.message(
      'Notifications Email',
      name: 'notificationsEmail',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get tasks {
    return Intl.message(
      'Tasks',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Tasks Orders`
  String get tasksOrders {
    return Intl.message(
      'Tasks Orders',
      name: 'tasksOrders',
      desc: '',
      args: [],
    );
  }

  /// `Task Details`
  String get taskDetails {
    return Intl.message(
      'Task Details',
      name: 'taskDetails',
      desc: '',
      args: [],
    );
  }

  /// `Do Task`
  String get doTask {
    return Intl.message(
      'Do Task',
      name: 'doTask',
      desc: '',
      args: [],
    );
  }

  /// `Copy Comment`
  String get copyComment {
    return Intl.message(
      'Copy Comment',
      name: 'copyComment',
      desc: '',
      args: [],
    );
  }

  /// `Text copied to clipboard`
  String get textCopiedToClipboard {
    return Intl.message(
      'Text copied to clipboard',
      name: 'textCopiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get text {
    return Intl.message(
      'Text',
      name: 'text',
      desc: '',
      args: [],
    );
  }

  /// `Please set the timeStamp`
  String get pleaseSetTheTimestamp {
    return Intl.message(
      'Please set the timeStamp',
      name: 'pleaseSetTheTimestamp',
      desc: '',
      args: [],
    );
  }

  /// `Please Pick an Image`
  String get pleasePickAnImage {
    return Intl.message(
      'Please Pick an Image',
      name: 'pleasePickAnImage',
      desc: '',
      args: [],
    );
  }

  /// `Task`
  String get task {
    return Intl.message(
      'Task',
      name: 'task',
      desc: '',
      args: [],
    );
  }

  /// `George Michael`
  String get fullNameHint {
    return Intl.message(
      'George Michael',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `georgemichael`
  String get usernameHint {
    return Intl.message(
      'georgemichael',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `georgemichael@gmail.com`
  String get emailHint {
    return Intl.message(
      'georgemichael@gmail.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `123qweASD!`
  String get passwordHint {
    return Intl.message(
      '123qweASD!',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Click here to copy the task url`
  String get clickHereToCopyTheTaskUrl {
    return Intl.message(
      'Click here to copy the task url',
      name: 'clickHereToCopyTheTaskUrl',
      desc: '',
      args: [],
    );
  }

  /// `Url`
  String get url {
    return Intl.message(
      'Url',
      name: 'url',
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
