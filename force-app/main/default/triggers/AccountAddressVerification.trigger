trigger AccountAddressVerification on Account (before insert, before update) {
    AccountAddressService.validatePostalCodes(Trigger.new);
}