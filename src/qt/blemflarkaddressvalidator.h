// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BLEMFLARK_QT_BLEMFLARKADDRESSVALIDATOR_H
#define BLEMFLARK_QT_BLEMFLARKADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class BlemflarkAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BlemflarkAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Blemflark address widget validator, checks for a valid blemflark address.
 */
class BlemflarkAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BlemflarkAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // BLEMFLARK_QT_BLEMFLARKADDRESSVALIDATOR_H
