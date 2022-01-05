echo "FROM,TO,MONTH,YEAR,AVG,MIN,MAX"
./get_currencies.sh \
	| while read p; do echo ./get_values.sh USD $p; done \
	| sh
