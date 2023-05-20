#!/bin/bash

read -r -p "What version of Modsecurity do you want to use? (e.g., 3.3.4): " MODSEC_VERSION

BASE_DIR="/usr/local/lsws/conf/modsec"
OWASP_FOLDER="$BASE_DIR/owasp"
OWASP_FOLDER_NEW="$BASE_DIR/owasp-modsecurity-crs-3.0-master"
OWASP_ARCHIVE_URL="https://github.com/coreruleset/coreruleset/archive/v$MODSEC_VERSION/master.zip"
OWASP_ARCHIVE_FILENAME="$BASE_DIR/owasp.zip"

mkdir -p "$BASE_DIR"

rm -rf "$OWASP_FOLDER_NEW" "$OWASP_FOLDER" "owasp.tar.gz"

wget "$OWASP_ARCHIVE_URL" -O "$OWASP_ARCHIVE_FILENAME" || {
    echo "Unable to download the version $MODSEC_VERSION"
    echo "Please check if you entered the correct version"
    echo "https://github.com/coreruleset/coreruleset/releases"
    exit 1
}

unzip -o "$OWASP_ARCHIVE_FILENAME" -d "$BASE_DIR" || {
    echo "Failed to unzip $OWASP_ARCHIVE_FILENAME"
    exit 1
}

# Remove zip file after extraction
rm "$OWASP_ARCHIVE_FILENAME"

if ! mv "$BASE_DIR/coreruleset-$MODSEC_VERSION" "$OWASP_FOLDER_NEW"; then
    echo "Failed to rename the folder from coreruleset-$MODSEC_VERSION to $OWASP_FOLDER_NEW"
    exit 1
fi

# Rename example configuration files to actual configuration files
for file in "crs-setup.conf" "rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf" "rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf"; do
    if ! mv "$OWASP_FOLDER_NEW/$file.example" "$OWASP_FOLDER_NEW/$file"; then
        echo "Failed to rename $file.example to $file"
        exit 1
    fi
done

INCLUDE_FILES=(
    "crs-setup.conf"
    "rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf"
    "rules/REQUEST-901-INITIALIZATION.conf"
    "rules/REQUEST-905-COMMON-EXCEPTIONS.conf"
    "rules/REQUEST-910-IP-REPUTATION.conf"
    "rules/REQUEST-911-METHOD-ENFORCEMENT.conf"
    "rules/REQUEST-912-DOS-PROTECTION.conf"
    "rules/REQUEST-913-SCANNER-DETECTION.conf"
    "rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf"
    "rules/REQUEST-921-PROTOCOL-ATTACK.conf"
    "rules/REQUEST-930-APPLICATION-ATTACK-LFI.conf"
    "rules/REQUEST-931-APPLICATION-ATTACK-RFI.conf"
    "rules/REQUEST-932-APPLICATION-ATTACK-RCE.conf"
    "rules/REQUEST-933-APPLICATION-ATTACK-PHP.conf"
    "rules/REQUEST-941-APPLICATION-ATTACK-XSS.conf"
    "rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf"
    "rules/REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION.conf"
    "rules/REQUEST-949-BLOCKING-EVALUATION.conf"
    "rules/RESPONSE-950-DATA-LEAKAGES.conf"
    "rules/RESPONSE-951-DATA-LEAKAGES-SQL.conf"
    "rules/RESPONSE-952-DATA-LEAKAGES-JAVA.conf"
    "rules/RESPONSE-953-DATA-LEAKAGES-PHP.conf"
    "rules/RESPONSE-954-DATA-LEAKAGES-IIS.conf"
    "rules/RESPONSE-959-BLOCKING-EVALUATION.conf"
    "rules/RESPONSE-980-CORRELATION.conf"
    "rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf"
)

printf "include %s\n" "${INCLUDE_FILES[@]/#/$OWASP_FOLDER_NEW/}" > "$OWASP_FOLDER_NEW/owasp-master.conf"

echo ""
echo "Modsecurity rules changed to version $MODSEC_VERSION"
