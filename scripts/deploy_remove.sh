#!/bin/sh

echo "Clean QA settings when removed"

#remove database
mysqladmin -uroot drop $DATABASE_NAME
mysql -u root mysql -e "DROP USER '"$DATABASE_USER"'@'localhost';"

#remove apache config
rm -f $HOME/conf.d/$DOMAIN.conf

#remove DOCROOT
rm -rf $DOCROOT
