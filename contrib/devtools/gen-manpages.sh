#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BLEMFLARKD=${BLEMFLARKD:-$SRCDIR/blemflarkd}
BLEMFLARKCLI=${BLEMFLARKCLI:-$SRCDIR/blemflark-cli}
BLEMFLARKTX=${BLEMFLARKTX:-$SRCDIR/blemflark-tx}
BLEMFLARKQT=${BLEMFLARKQT:-$SRCDIR/qt/blemflark-qt}

[ ! -x $BLEMFLARKD ] && echo "$BLEMFLARKD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BFMVER=($($BLEMFLARKCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for blemflarkd if --version-string is not set,
# but has different outcomes for blemflark-qt and blemflark-cli.
echo "[COPYRIGHT]" > footer.h2m
$BLEMFLARKD --version | sed -n '1!p' >> footer.h2m

for cmd in $BLEMFLARKD $BLEMFLARKCLI $BLEMFLARKTX $BLEMFLARKQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BFMVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BFMVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
