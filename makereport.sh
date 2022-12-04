# ! /bin/sh


echo -e ".fam ubuntu\n.ft R\n.ft B\n.ft I\n" > report.ms
echo "$(cat readme.md)" | pandoc --to ms >> report.ms
echo "$(cat report.ms)" | groff  -ms -tbl -refer -Kutf8 -Tpdf -E > readme.pdf