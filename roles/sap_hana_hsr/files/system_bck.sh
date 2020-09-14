#!/bin/bash
source /usr/sap/{{ sap_hana_hsr_hana_sid }}/home/.sapenv.sh && \
/usr/sap/{{ sap_hana_hsr_hana_sid | upper }}/HDB{{ sap_hana_hsr_hana_instance_number }}/exe/hdbsql \
-i {{ sap_hana_hsr_hana_instance_number }} -u SYSTEM -p {{ sap_hana_hsr_hana_db_system_password }} -d SYSTEMDB -m <<EOF
BACKUP DATA USING FILE ('system_bck');
EOF