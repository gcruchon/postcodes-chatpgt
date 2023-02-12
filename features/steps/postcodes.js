const { Given, When, Then } = require('@cucumber/cucumber');
const { isValidFrancePostalCode, isValidMonacoPostalCode } = require('../../src/app/postcodes');

Given('I have a postal code {string}', (postalCode) => {
  this.postalCode = postalCode;
});

When('I validate the postal code', () => {
  this.valid = isValidFrancePostalCode(this.postalCode);
});

Then('it should be valid', () => {
  if (!this.valid) {
    throw new Error(`Postal code "${this.postalCode}" should be valid`);
  }
});

Then('it should be invalid', () => {
  if (this.valid) {
    throw new Error(`Postal code "${this.postalCode}" should be invalid`);
  }
});
