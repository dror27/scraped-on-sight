curl -s "https://fxtop.com/dev/submithisto.php" \
	| xmllint --html --xpath "/html/body/form/table/tr[1]/td[2]/select/option/@value" - \
	| tr "=" "\n" \
	| grep -v "value" \
	| sed 's/"//g'
