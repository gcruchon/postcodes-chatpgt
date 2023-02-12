const isValidFrancePostalCode = (postalCode) => {
    // Your implementation here
    // You can use the regular expression mentioned in my previous answer to validate the postal code
    return /^(?!(7510|75009|990))\d{5}$/.test(postalCode);
};

module.exports = {
    isValidFrancePostalCode
}
